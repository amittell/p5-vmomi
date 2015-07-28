package VMOMI::ReplicationVmConfigFault;
use parent 'VMOMI::ReplicationConfigFault';

our @class_members = ( 
    ['reason', undef, 0, 0],
    ['vmRef', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
