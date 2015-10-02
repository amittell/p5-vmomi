package VMOMI::HostConfigManager;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['cpuScheduler', 'ManagedObjectReference', 0, 0],
    ['datastoreSystem', 'ManagedObjectReference', 0, 0],
    ['memoryManager', 'ManagedObjectReference', 0, 0],
    ['storageSystem', 'ManagedObjectReference', 0, 0],
    ['networkSystem', 'ManagedObjectReference', 0, 0],
    ['vmotionSystem', 'ManagedObjectReference', 0, 0],
    ['virtualNicManager', 'ManagedObjectReference', 0, 0],
    ['serviceSystem', 'ManagedObjectReference', 0, 0],
    ['firewallSystem', 'ManagedObjectReference', 0, 0],
    ['advancedOption', 'ManagedObjectReference', 0, 0],
    ['diagnosticSystem', 'ManagedObjectReference', 0, 0],
    ['autoStartManager', 'ManagedObjectReference', 0, 0],
    ['snmpSystem', 'ManagedObjectReference', 0, 0],
    ['dateTimeSystem', 'ManagedObjectReference', 0, 0],
    ['patchManager', 'ManagedObjectReference', 0, 0],
    ['imageConfigManager', 'ManagedObjectReference', 0, 0],
    ['bootDeviceSystem', 'ManagedObjectReference', 0, 0],
    ['firmwareSystem', 'ManagedObjectReference', 0, 0],
    ['healthStatusSystem', 'ManagedObjectReference', 0, 0],
    ['pciPassthruSystem', 'ManagedObjectReference', 0, 0],
    ['licenseManager', 'ManagedObjectReference', 0, 0],
    ['kernelModuleSystem', 'ManagedObjectReference', 0, 0],
    ['authenticationManager', 'ManagedObjectReference', 0, 0],
    ['powerSystem', 'ManagedObjectReference', 0, 0],
    ['cacheConfigurationManager', 'ManagedObjectReference', 0, 0],
    ['esxAgentHostManager', 'ManagedObjectReference', 0, 0],
    ['iscsiManager', 'ManagedObjectReference', 0, 0],
    ['vFlashManager', 'ManagedObjectReference', 0, 0],
    ['vsanSystem', 'ManagedObjectReference', 0, 0],
    ['messageBusProxy', 'ManagedObjectReference', 0, 0],
    ['userDirectory', 'ManagedObjectReference', 0, 0],
    ['accountManager', 'ManagedObjectReference', 0, 0],
    ['hostAccessManager', 'ManagedObjectReference', 0, 0],
    ['graphicsManager', 'ManagedObjectReference', 0, 0],
    ['vsanInternalSystem', 'ManagedObjectReference', 0, 0],
    ['certificateManager', 'ManagedObjectReference', 0, 0],
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
