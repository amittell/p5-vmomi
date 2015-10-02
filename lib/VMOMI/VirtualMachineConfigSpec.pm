package VMOMI::VirtualMachineConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['changeVersion', undef, 0, 0],
    ['name', undef, 0, 0],
    ['version', undef, 0, 0],
    ['uuid', undef, 0, 0],
    ['instanceUuid', undef, 0, 0],
    ['npivNodeWorldWideName', undef, 1, 0],
    ['npivPortWorldWideName', undef, 1, 0],
    ['npivWorldWideNameType', undef, 0, 0],
    ['npivDesiredNodeWwns', undef, 0, 0],
    ['npivDesiredPortWwns', undef, 0, 0],
    ['npivTemporaryDisabled', 'boolean', 0, 0],
    ['npivOnNonRdmDisks', 'boolean', 0, 0],
    ['npivWorldWideNameOp', undef, 0, 0],
    ['locationId', undef, 0, 0],
    ['guestId', undef, 0, 0],
    ['alternateGuestName', undef, 0, 0],
    ['annotation', undef, 0, 0],
    ['files', 'VirtualMachineFileInfo', 0, 0],
    ['tools', 'ToolsConfigInfo', 0, 0],
    ['flags', 'VirtualMachineFlagInfo', 0, 0],
    ['consolePreferences', 'VirtualMachineConsolePreferences', 0, 0],
    ['powerOpInfo', 'VirtualMachineDefaultPowerOpInfo', 0, 0],
    ['numCPUs', undef, 0, 0],
    ['numCoresPerSocket', undef, 0, 0],
    ['memoryMB', undef, 0, 0],
    ['memoryHotAddEnabled', 'boolean', 0, 0],
    ['cpuHotAddEnabled', 'boolean', 0, 0],
    ['cpuHotRemoveEnabled', 'boolean', 0, 0],
    ['virtualICH7MPresent', 'boolean', 0, 0],
    ['virtualSMCPresent', 'boolean', 0, 0],
    ['deviceChange', 'VirtualDeviceConfigSpec', 1, 0],
    ['cpuAllocation', 'ResourceAllocationInfo', 0, 0],
    ['memoryAllocation', 'ResourceAllocationInfo', 0, 0],
    ['latencySensitivity', 'LatencySensitivity', 0, 0],
    ['cpuAffinity', 'VirtualMachineAffinityInfo', 0, 0],
    ['memoryAffinity', 'VirtualMachineAffinityInfo', 0, 0],
    ['networkShaper', 'VirtualMachineNetworkShaperInfo', 0, 0],
    ['cpuFeatureMask', 'VirtualMachineCpuIdInfoSpec', 1, 0],
    ['extraConfig', 'OptionValue', 1, 0],
    ['swapPlacement', undef, 0, 0],
    ['bootOptions', 'VirtualMachineBootOptions', 0, 0],
    ['vAppConfig', 'VmConfigSpec', 0, 0],
    ['ftInfo', 'FaultToleranceConfigInfo', 0, 0],
    ['repConfig', 'ReplicationConfigSpec', 0, 0],
    ['vAppConfigRemoved', 'boolean', 0, 0],
    ['vAssertsEnabled', 'boolean', 0, 0],
    ['changeTrackingEnabled', 'boolean', 0, 0],
    ['firmware', undef, 0, 0],
    ['maxMksConnections', undef, 0, 0],
    ['guestAutoLockEnabled', 'boolean', 0, 0],
    ['managedBy', 'ManagedByInfo', 0, 0],
    ['memoryReservationLockedToMax', 'boolean', 0, 0],
    ['nestedHVEnabled', 'boolean', 0, 0],
    ['vPMCEnabled', 'boolean', 0, 0],
    ['scheduledHardwareUpgradeInfo', 'ScheduledHardwareUpgradeInfo', 0, 0],
    ['vmProfile', 'VirtualMachineProfileSpec', 1, 0],
    ['messageBusTunnelEnabled', 'boolean', 0, 0],
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
