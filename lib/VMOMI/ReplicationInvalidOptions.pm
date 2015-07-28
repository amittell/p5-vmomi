package VMOMI::ReplicationInvalidOptions;
use parent 'VMOMI::ReplicationFault';

our @class_members = ( 
    ['options', undef, 0, 1],
    ['entity', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
