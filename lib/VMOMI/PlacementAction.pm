package VMOMI::PlacementAction;
use parent 'VMOMI::ClusterAction';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 0],
    ['targetHost', 'ManagedObjectReference', 0, 0],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;