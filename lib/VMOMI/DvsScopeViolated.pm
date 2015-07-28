package VMOMI::DvsScopeViolated;
use parent 'VMOMI::DvsFault';

our @class_members = ( 
    ['scope', 'ManagedObjectReference', 1, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
