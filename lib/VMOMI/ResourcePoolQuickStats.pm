package VMOMI::ResourcePoolQuickStats;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['overallCpuUsage', undef, 0, 0],
    ['overallCpuDemand', undef, 0, 0],
    ['guestMemoryUsage', undef, 0, 0],
    ['hostMemoryUsage', undef, 0, 0],
    ['distributedCpuEntitlement', undef, 0, 0],
    ['distributedMemoryEntitlement', undef, 0, 0],
    ['staticCpuEntitlement', undef, 0, 0],
    ['staticMemoryEntitlement', undef, 0, 0],
    ['privateMemory', undef, 0, 0],
    ['sharedMemory', undef, 0, 0],
    ['swappedMemory', undef, 0, 0],
    ['balloonedMemory', undef, 0, 0],
    ['overheadMemory', undef, 0, 0],
    ['consumedOverheadMemory', undef, 0, 0],
    ['compressedMemory', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
