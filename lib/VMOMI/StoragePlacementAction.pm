package VMOMI::StoragePlacementAction;
use parent 'VMOMI::ClusterAction';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 0],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 1],
    ['destination', 'ManagedObjectReference', 0, 1],
    ['spaceUtilBefore', undef, 0, 0],
    ['spaceDemandBefore', undef, 0, 0],
    ['spaceUtilAfter', undef, 0, 0],
    ['spaceDemandAfter', undef, 0, 0],
    ['ioLatencyBefore', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
