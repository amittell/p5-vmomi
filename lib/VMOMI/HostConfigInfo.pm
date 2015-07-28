package VMOMI::HostConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['product', 'AboutInfo', 0, 1],
    ['hyperThread', 'HostHyperThreadScheduleInfo', 0, 0],
    ['consoleReservation', 'ServiceConsoleReservationInfo', 0, 0],
    ['virtualMachineReservation', 'VirtualMachineMemoryReservationInfo', 0, 0],
    ['storageDevice', 'HostStorageDeviceInfo', 0, 0],
    ['multipathState', 'HostMultipathStateInfo', 0, 0],
    ['fileSystemVolume', 'HostFileSystemVolumeInfo', 0, 0],
    ['systemFile', undef, 1, 0],
    ['network', 'HostNetworkInfo', 0, 0],
    ['vmotion', 'HostVMotionInfo', 0, 0],
    ['virtualNicManagerInfo', 'HostVirtualNicManagerInfo', 0, 0],
    ['capabilities', 'HostNetCapabilities', 0, 0],
    ['datastoreCapabilities', 'HostDatastoreSystemCapabilities', 0, 0],
    ['offloadCapabilities', 'HostNetOffloadCapabilities', 0, 0],
    ['service', 'HostServiceInfo', 0, 0],
    ['firewall', 'HostFirewallInfo', 0, 0],
    ['autoStart', 'HostAutoStartManagerConfig', 0, 0],
    ['activeDiagnosticPartition', 'HostDiagnosticPartition', 0, 0],
    ['option', 'OptionValue', 1, 0],
    ['optionDef', 'OptionDef', 1, 0],
    ['datastorePrincipal', undef, 0, 0],
    ['localSwapDatastore', 'ManagedObjectReference', 0, 0],
    ['systemSwapConfiguration', 'HostSystemSwapConfiguration', 0, 0],
    ['systemResources', 'HostSystemResourceInfo', 0, 0],
    ['dateTimeInfo', 'HostDateTimeInfo', 0, 0],
    ['flags', 'HostFlagInfo', 0, 0],
    ['adminDisabled', 'boolean', 0, 0],
    ['lockdownMode', 'HostLockdownMode', 0, 0],
    ['ipmi', 'HostIpmiInfo', 0, 0],
    ['sslThumbprintInfo', 'HostSslThumbprintInfo', 0, 0],
    ['sslThumbprintData', 'HostSslThumbprintInfo', 1, 0],
    ['certificate', undef, 1, 0],
    ['pciPassthruInfo', 'HostPciPassthruInfo', 1, 0],
    ['authenticationManagerInfo', 'HostAuthenticationManagerInfo', 0, 0],
    ['featureVersion', 'HostFeatureVersionInfo', 1, 0],
    ['powerSystemCapability', 'PowerSystemCapability', 0, 0],
    ['powerSystemInfo', 'PowerSystemInfo', 0, 0],
    ['cacheConfigurationInfo', 'HostCacheConfigurationInfo', 1, 0],
    ['wakeOnLanCapable', 'boolean', 0, 0],
    ['featureCapability', 'HostFeatureCapability', 1, 0],
    ['maskedFeatureCapability', 'HostFeatureCapability', 1, 0],
    ['vFlashConfigInfo', 'HostVFlashManagerVFlashConfigInfo', 0, 0],
    ['vsanHostConfig', 'VsanHostConfigInfo', 0, 0],
    ['domainList', undef, 1, 0],
    ['scriptCheckSum', undef, 0, 0],
    ['hostConfigCheckSum', undef, 0, 0],
    ['graphicsInfo', 'HostGraphicsInfo', 1, 0],
    ['sharedPassthruGpuTypes', undef, 1, 0],
    ['ioFilterInfo', 'HostIoFilterInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
