package VMOMI::HostRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['connectionState', 'HostSystemConnectionState', 0, 1],
    ['powerState', 'HostSystemPowerState', 0, 1],
    ['standbyMode', undef, 0, 0],
    ['inMaintenanceMode', 'boolean', 0, 1],
    ['bootTime', undef, 0, 0],
    ['healthSystemRuntime', 'HealthSystemRuntime', 0, 0],
    ['dasHostState', 'ClusterDasFdmHostState', 0, 0],
    ['tpmPcrValues', 'HostTpmDigestInfo', 1, 0],
    ['vsanRuntimeInfo', 'VsanHostRuntimeInfo', 0, 0],
    ['networkRuntimeInfo', 'HostRuntimeInfoNetworkRuntimeInfo', 0, 0],
    ['vFlashResourceRuntimeInfo', 'HostVFlashManagerVFlashResourceRunTimeInfo', 0, 0],
    ['hostMaxVirtualDiskCapacity', undef, 0, 0],
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
