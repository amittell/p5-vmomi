package VMOMI::HostCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['recursiveResourcePoolsSupported', 'boolean', 0, 1],
    ['cpuMemoryResourceConfigurationSupported', 'boolean', 0, 1],
    ['rebootSupported', 'boolean', 0, 1],
    ['shutdownSupported', 'boolean', 0, 1],
    ['vmotionSupported', 'boolean', 0, 1],
    ['standbySupported', 'boolean', 0, 1],
    ['ipmiSupported', 'boolean', 0, 0],
    ['maxSupportedVMs', undef, 0, 0],
    ['maxRunningVMs', undef, 0, 0],
    ['maxSupportedVcpus', undef, 0, 0],
    ['maxRegisteredVMs', undef, 0, 0],
    ['datastorePrincipalSupported', 'boolean', 0, 1],
    ['sanSupported', 'boolean', 0, 1],
    ['nfsSupported', 'boolean', 0, 1],
    ['iscsiSupported', 'boolean', 0, 1],
    ['vlanTaggingSupported', 'boolean', 0, 1],
    ['nicTeamingSupported', 'boolean', 0, 1],
    ['highGuestMemSupported', 'boolean', 0, 1],
    ['maintenanceModeSupported', 'boolean', 0, 1],
    ['suspendedRelocateSupported', 'boolean', 0, 1],
    ['restrictedSnapshotRelocateSupported', 'boolean', 0, 1],
    ['perVmSwapFiles', 'boolean', 0, 1],
    ['localSwapDatastoreSupported', 'boolean', 0, 1],
    ['unsharedSwapVMotionSupported', 'boolean', 0, 1],
    ['backgroundSnapshotsSupported', 'boolean', 0, 1],
    ['preAssignedPCIUnitNumbersSupported', 'boolean', 0, 1],
    ['screenshotSupported', 'boolean', 0, 1],
    ['scaledScreenshotSupported', 'boolean', 0, 1],
    ['storageVMotionSupported', 'boolean', 0, 0],
    ['vmotionWithStorageVMotionSupported', 'boolean', 0, 0],
    ['vmotionAcrossNetworkSupported', 'boolean', 0, 0],
    ['maxNumDisksSVMotion', undef, 0, 0],
    ['hbrNicSelectionSupported', 'boolean', 0, 0],
    ['vrNfcNicSelectionSupported', 'boolean', 0, 0],
    ['recordReplaySupported', 'boolean', 0, 0],
    ['ftSupported', 'boolean', 0, 0],
    ['replayUnsupportedReason', undef, 0, 0],
    ['replayCompatibilityIssues', undef, 1, 0],
    ['smpFtSupported', 'boolean', 0, 0],
    ['ftCompatibilityIssues', undef, 1, 0],
    ['smpFtCompatibilityIssues', undef, 1, 0],
    ['maxVcpusPerFtVm', undef, 0, 0],
    ['loginBySSLThumbprintSupported', 'boolean', 0, 0],
    ['cloneFromSnapshotSupported', 'boolean', 0, 0],
    ['deltaDiskBackingsSupported', 'boolean', 0, 0],
    ['perVMNetworkTrafficShapingSupported', 'boolean', 0, 0],
    ['tpmSupported', 'boolean', 0, 0],
    ['supportedCpuFeature', 'HostCpuIdInfo', 1, 0],
    ['virtualExecUsageSupported', 'boolean', 0, 0],
    ['storageIORMSupported', 'boolean', 0, 0],
    ['vmDirectPathGen2Supported', 'boolean', 0, 0],
    ['vmDirectPathGen2UnsupportedReason', undef, 1, 0],
    ['vmDirectPathGen2UnsupportedReasonExtended', undef, 0, 0],
    ['supportedVmfsMajorVersion', undef, 1, 0],
    ['vStorageCapable', 'boolean', 0, 0],
    ['snapshotRelayoutSupported', 'boolean', 0, 0],
    ['firewallIpRulesSupported', 'boolean', 0, 0],
    ['servicePackageInfoSupported', 'boolean', 0, 0],
    ['maxHostRunningVms', undef, 0, 0],
    ['maxHostSupportedVcpus', undef, 0, 0],
    ['vmfsDatastoreMountCapable', 'boolean', 0, 0],
    ['eightPlusHostVmfsSharedAccessSupported', 'boolean', 0, 0],
    ['nestedHVSupported', 'boolean', 0, 0],
    ['vPMCSupported', 'boolean', 0, 0],
    ['interVMCommunicationThroughVMCISupported', 'boolean', 0, 0],
    ['scheduledHardwareUpgradeSupported', 'boolean', 0, 0],
    ['featureCapabilitiesSupported', 'boolean', 0, 0],
    ['latencySensitivitySupported', 'boolean', 0, 0],
    ['storagePolicySupported', 'boolean', 0, 0],
    ['accel3dSupported', 'boolean', 0, 0],
    ['reliableMemoryAware', 'boolean', 0, 0],
    ['multipleNetworkStackInstanceSupported', 'boolean', 0, 0],
    ['messageBusProxySupported', 'boolean', 0, 0],
    ['vsanSupported', 'boolean', 0, 0],
    ['vFlashSupported', 'boolean', 0, 0],
    ['hostAccessManagerSupported', 'boolean', 0, 0],
    ['provisioningNicSelectionSupported', 'boolean', 0, 0],
    ['nfs41Supported', 'boolean', 0, 0],
    ['turnDiskLocatorLedSupported', 'boolean', 0, 0],
    ['virtualVolumeDatastoreSupported', 'boolean', 0, 0],
    ['markAsSsdSupported', 'boolean', 0, 0],
    ['markAsLocalSupported', 'boolean', 0, 0],
    ['smartCardAuthenticationSupported', 'boolean', 0, 0],
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
