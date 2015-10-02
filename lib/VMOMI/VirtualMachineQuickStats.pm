package VMOMI::VirtualMachineQuickStats;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['overallCpuUsage', undef, 0, 0],
    ['overallCpuDemand', undef, 0, 0],
    ['guestMemoryUsage', undef, 0, 0],
    ['hostMemoryUsage', undef, 0, 0],
    ['guestHeartbeatStatus', 'ManagedEntityStatus', 0, 1],
    ['distributedCpuEntitlement', undef, 0, 0],
    ['distributedMemoryEntitlement', undef, 0, 0],
    ['staticCpuEntitlement', undef, 0, 0],
    ['staticMemoryEntitlement', undef, 0, 0],
    ['privateMemory', undef, 0, 0],
    ['sharedMemory', undef, 0, 0],
    ['swappedMemory', undef, 0, 0],
    ['balloonedMemory', undef, 0, 0],
    ['consumedOverheadMemory', undef, 0, 0],
    ['ftLogBandwidth', undef, 0, 0],
    ['ftSecondaryLatency', undef, 0, 0],
    ['ftLatencyStatus', 'ManagedEntityStatus', 0, 0],
    ['compressedMemory', undef, 0, 0],
    ['uptimeSeconds', undef, 0, 0],
    ['ssdSwappedMemory', undef, 0, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
