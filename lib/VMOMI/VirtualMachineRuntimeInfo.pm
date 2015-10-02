package VMOMI::VirtualMachineRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['device', 'VirtualMachineDeviceRuntimeInfo', 1, 0],
    ['host', 'ManagedObjectReference', 0, 0],
    ['connectionState', 'VirtualMachineConnectionState', 0, 1],
    ['powerState', 'VirtualMachinePowerState', 0, 1],
    ['faultToleranceState', 'VirtualMachineFaultToleranceState', 0, 0],
    ['dasVmProtection', 'VirtualMachineRuntimeInfoDasProtectionState', 0, 0],
    ['toolsInstallerMounted', 'boolean', 0, 1],
    ['suspendTime', undef, 0, 0],
    ['bootTime', undef, 0, 0],
    ['suspendInterval', undef, 0, 0],
    ['question', 'VirtualMachineQuestionInfo', 0, 0],
    ['memoryOverhead', undef, 0, 0],
    ['maxCpuUsage', undef, 0, 0],
    ['maxMemoryUsage', undef, 0, 0],
    ['numMksConnections', undef, 0, 1],
    ['recordReplayState', 'VirtualMachineRecordReplayState', 0, 0],
    ['cleanPowerOff', 'boolean', 0, 0],
    ['needSecondaryReason', undef, 0, 0],
    ['onlineStandby', 'boolean', 0, 0],
    ['minRequiredEVCModeKey', undef, 0, 0],
    ['consolidationNeeded', 'boolean', 0, 0],
    ['offlineFeatureRequirement', 'VirtualMachineFeatureRequirement', 1, 0],
    ['featureRequirement', 'VirtualMachineFeatureRequirement', 1, 0],
    ['featureMask', 'HostFeatureMask', 1, 0],
    ['vFlashCacheAllocation', undef, 0, 0],
    ['paused', 'boolean', 0, 0],
    ['snapshotInBackground', 'boolean', 0, 0],
    ['quiescedForkParent', 'boolean', 0, 0],
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
