package VMOMI::StorageMigrationAction;
use parent 'VMOMI::ClusterAction';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 1],
    ['source', 'ManagedObjectReference', 0, 1],
    ['destination', 'ManagedObjectReference', 0, 1],
    ['sizeTransferred', undef, 0, 1],
    ['spaceUtilSrcBefore', undef, 0, 0],
    ['spaceUtilDstBefore', undef, 0, 0],
    ['spaceUtilSrcAfter', undef, 0, 0],
    ['spaceUtilDstAfter', undef, 0, 0],
    ['ioLatencySrcBefore', undef, 0, 0],
    ['ioLatencyDstBefore', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
