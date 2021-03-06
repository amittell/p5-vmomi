package VMOMI::VirtualMachineConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['changeVersion', undef, 0, 1],
    ['modified', undef, 0, 1],
    ['name', undef, 0, 1],
    ['guestFullName', undef, 0, 1],
    ['version', undef, 0, 1],
    ['uuid', undef, 0, 1],
    ['instanceUuid', undef, 0, 0],
    ['npivNodeWorldWideName', undef, 1, 0],
    ['npivPortWorldWideName', undef, 1, 0],
    ['npivWorldWideNameType', undef, 0, 0],
    ['npivDesiredNodeWwns', undef, 0, 0],
    ['npivDesiredPortWwns', undef, 0, 0],
    ['npivTemporaryDisabled', 'boolean', 0, 0],
    ['npivOnNonRdmDisks', 'boolean', 0, 0],
    ['locationId', undef, 0, 0],
    ['template', 'boolean', 0, 1],
    ['guestId', undef, 0, 1],
    ['alternateGuestName', undef, 0, 1],
    ['annotation', undef, 0, 0],
    ['files', 'VirtualMachineFileInfo', 0, 1],
    ['tools', 'ToolsConfigInfo', 0, 0],
    ['flags', 'VirtualMachineFlagInfo', 0, 1],
    ['consolePreferences', 'VirtualMachineConsolePreferences', 0, 0],
    ['defaultPowerOps', 'VirtualMachineDefaultPowerOpInfo', 0, 1],
    ['hardware', 'VirtualHardware', 0, 1],
    ['cpuAllocation', 'ResourceAllocationInfo', 0, 0],
    ['memoryAllocation', 'ResourceAllocationInfo', 0, 0],
    ['latencySensitivity', 'LatencySensitivity', 0, 0],
    ['memoryHotAddEnabled', 'boolean', 0, 0],
    ['cpuHotAddEnabled', 'boolean', 0, 0],
    ['cpuHotRemoveEnabled', 'boolean', 0, 0],
    ['hotPlugMemoryLimit', undef, 0, 0],
    ['hotPlugMemoryIncrementSize', undef, 0, 0],
    ['cpuAffinity', 'VirtualMachineAffinityInfo', 0, 0],
    ['memoryAffinity', 'VirtualMachineAffinityInfo', 0, 0],
    ['networkShaper', 'VirtualMachineNetworkShaperInfo', 0, 0],
    ['extraConfig', 'OptionValue', 1, 0],
    ['cpuFeatureMask', 'HostCpuIdInfo', 1, 0],
    ['datastoreUrl', 'VirtualMachineConfigInfoDatastoreUrlPair', 1, 0],
    ['swapPlacement', undef, 0, 0],
    ['bootOptions', 'VirtualMachineBootOptions', 0, 0],
    ['ftInfo', 'FaultToleranceConfigInfo', 0, 0],
    ['repConfig', 'ReplicationConfigSpec', 0, 0],
    ['vAppConfig', 'VmConfigInfo', 0, 0],
    ['vAssertsEnabled', 'boolean', 0, 0],
    ['changeTrackingEnabled', 'boolean', 0, 0],
    ['firmware', undef, 0, 0],
    ['maxMksConnections', undef, 0, 0],
    ['guestAutoLockEnabled', 'boolean', 0, 0],
    ['managedBy', 'ManagedByInfo', 0, 0],
    ['memoryReservationLockedToMax', 'boolean', 0, 0],
    ['initialOverhead', 'VirtualMachineConfigInfoOverheadInfo', 0, 0],
    ['nestedHVEnabled', 'boolean', 0, 0],
    ['vPMCEnabled', 'boolean', 0, 0],
    ['scheduledHardwareUpgradeInfo', 'ScheduledHardwareUpgradeInfo', 0, 0],
    ['forkConfigInfo', 'VirtualMachineForkConfigInfo', 0, 0],
    ['vFlashCacheReservation', undef, 0, 0],
    ['vmxConfigChecksum', undef, 0, 0],
    ['messageBusTunnelEnabled', 'boolean', 0, 0],
    ['vmStorageObjectId', undef, 0, 0],
    ['swapStorageObjectId', undef, 0, 0],
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
