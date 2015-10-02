package VMOMI::VirtualMachineCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['snapshotOperationsSupported', 'boolean', 0, 1],
    ['multipleSnapshotsSupported', 'boolean', 0, 1],
    ['snapshotConfigSupported', 'boolean', 0, 1],
    ['poweredOffSnapshotsSupported', 'boolean', 0, 1],
    ['memorySnapshotsSupported', 'boolean', 0, 1],
    ['revertToSnapshotSupported', 'boolean', 0, 1],
    ['quiescedSnapshotsSupported', 'boolean', 0, 1],
    ['disableSnapshotsSupported', 'boolean', 0, 1],
    ['lockSnapshotsSupported', 'boolean', 0, 1],
    ['consolePreferencesSupported', 'boolean', 0, 1],
    ['cpuFeatureMaskSupported', 'boolean', 0, 1],
    ['s1AcpiManagementSupported', 'boolean', 0, 1],
    ['settingScreenResolutionSupported', 'boolean', 0, 1],
    ['toolsAutoUpdateSupported', 'boolean', 0, 1],
    ['vmNpivWwnSupported', 'boolean', 0, 1],
    ['npivWwnOnNonRdmVmSupported', 'boolean', 0, 1],
    ['vmNpivWwnDisableSupported', 'boolean', 0, 0],
    ['vmNpivWwnUpdateSupported', 'boolean', 0, 0],
    ['swapPlacementSupported', 'boolean', 0, 1],
    ['toolsSyncTimeSupported', 'boolean', 0, 1],
    ['virtualMmuUsageSupported', 'boolean', 0, 1],
    ['diskSharesSupported', 'boolean', 0, 1],
    ['bootOptionsSupported', 'boolean', 0, 1],
    ['bootRetryOptionsSupported', 'boolean', 0, 0],
    ['settingVideoRamSizeSupported', 'boolean', 0, 1],
    ['settingDisplayTopologySupported', 'boolean', 0, 0],
    ['recordReplaySupported', 'boolean', 0, 0],
    ['changeTrackingSupported', 'boolean', 0, 0],
    ['multipleCoresPerSocketSupported', 'boolean', 0, 0],
    ['hostBasedReplicationSupported', 'boolean', 0, 0],
    ['guestAutoLockSupported', 'boolean', 0, 0],
    ['memoryReservationLockSupported', 'boolean', 0, 0],
    ['featureRequirementSupported', 'boolean', 0, 0],
    ['poweredOnMonitorTypeChangeSupported', 'boolean', 0, 0],
    ['seSparseDiskSupported', 'boolean', 0, 0],
    ['nestedHVSupported', 'boolean', 0, 0],
    ['vPMCSupported', 'boolean', 0, 0],
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
