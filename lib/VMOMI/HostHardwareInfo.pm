package VMOMI::HostHardwareInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['systemInfo', 'HostSystemInfo', 0, 1],
    ['cpuPowerManagementInfo', 'HostCpuPowerManagementInfo', 0, 0],
    ['cpuInfo', 'HostCpuInfo', 0, 1],
    ['cpuPkg', 'HostCpuPackage', 1, 1],
    ['memorySize', undef, 0, 1],
    ['numaInfo', 'HostNumaInfo', 0, 0],
    ['smcPresent', 'boolean', 0, 0],
    ['pciDevice', 'HostPciDevice', 1, 0],
    ['cpuFeature', 'HostCpuIdInfo', 1, 0],
    ['biosInfo', 'HostBIOSInfo', 0, 0],
    ['reliableMemoryInfo', 'HostReliableMemoryInfo', 0, 0],
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
