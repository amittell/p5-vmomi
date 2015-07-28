package VMOMI::ManagedObject;
use parent 'VMOMI::ComplexType';

use constant P5NS => 'VMOMI';

use Scalar::Util qw(weaken);

our @class_members = ( );

sub AUTOLOAD {
    my $self = shift;
    my $name = our $AUTOLOAD;
        
    return if $name =~ /::DESTROY$/;
    $name =~ s/.*://;
    
    # If name is part of the class definition, retrieve the property
    my $class = ref($self);
    my $type = $class;
    $type =~ s/.*:://;
    my ($info) = grep { $_->[0] eq $name } $class->get_class_members;
    
    if (defined $info) {
        my $options = new VMOMI::RetrieveOptions(maxObjects => 1);
        my $pcoll = new VMOMI::ManagedObjectReference(
            type => 'PropertyCollector',
            value => 'propertyCollector'
        );
        
        my $spec = new VMOMI::PropertyFilterSpec(reportMissingObjectsInResult => 0);
        my $pSet = [ new VMOMI::PropertySpec(
                        all => 0, 
                        type => $self->moref->type, 
                        pathSet => [ $name ],
                    )];
        my $oSet = [ new VMOMI::ObjectSpec(obj => $self->moref, skip => 0) ];
        $spec->objectSet($oSet);
        $spec->propSet($pSet);
        
        my $result = $self->si->RetrievePropertiesEx(
            _this => $pcoll, 
            specSet => [$spec],
            options => $options
        );
        
        my $value = undef;
        # Ignoring token, *shouldn't require more than one iteration*
        for my $object (@{$result->objects}) {
            for my $property (@{$object->propSet}) {
                if ($property->name eq $name) {
                    $self->{$name} = $property->val;
                    return $property->val;
                }
            }
        }
        return $value;    
    }
    
    # Just set or retrieve if the value is defined, should *pass-through* non SDK properties
    if (exists $self->{$name}) {
        $self->{$name} = shift if @_;
        return $self->{$name};
    }
    
    # Try a method invocation against the API
    my %args = @_;
    $args{'_this'} = $self->{'moref'};
    my $method = $self->si->can($name);
    unless ($method) {
        Exception::Autoload->throw(message => "Unknown method '$name' in " . ref($self));
    }
    return $self->si->$method(%args);
}

sub new {
    my ($class, $si, $moref, %args) = @_;
    my $self = $class->SUPER::new(%args);
    
    if (ref($si) ne P5NS . '::ServiceInstance') {
        die "Parameter (0) to class '$class' constructor must be VMOMI::ServiceInstance: ";
    }
    if (ref($moref) ne P5NS . '::ManagedObjectReference') {
        die "Parameter (1) to class '$class' constructor must be VMOMI::ManagedObjectReference";
    } 
    $self->{si}     = $si;
    $self->{moref}  = $moref;
    
    # Is weaken necessary here?
    weaken $self->{si};
    return bless $self, $class;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
