package VMOMI::ServiceContent;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['rootFolder', 'ManagedObjectReference', 0, 1],
    ['propertyCollector', 'ManagedObjectReference', 0, 1],
    ['viewManager', 'ManagedObjectReference', 0, 0],
    ['about', 'AboutInfo', 0, 1],
    ['setting', 'ManagedObjectReference', 0, 0],
    ['userDirectory', 'ManagedObjectReference', 0, 0],
    ['sessionManager', 'ManagedObjectReference', 0, 0],
    ['authorizationManager', 'ManagedObjectReference', 0, 0],
    ['serviceManager', 'ManagedObjectReference', 0, 0],
    ['perfManager', 'ManagedObjectReference', 0, 0],
    ['scheduledTaskManager', 'ManagedObjectReference', 0, 0],
    ['alarmManager', 'ManagedObjectReference', 0, 0],
    ['eventManager', 'ManagedObjectReference', 0, 0],
    ['taskManager', 'ManagedObjectReference', 0, 0],
    ['extensionManager', 'ManagedObjectReference', 0, 0],
    ['customizationSpecManager', 'ManagedObjectReference', 0, 0],
    ['customFieldsManager', 'ManagedObjectReference', 0, 0],
    ['accountManager', 'ManagedObjectReference', 0, 0],
    ['diagnosticManager', 'ManagedObjectReference', 0, 0],
    ['licenseManager', 'ManagedObjectReference', 0, 0],
    ['searchIndex', 'ManagedObjectReference', 0, 0],
    ['fileManager', 'ManagedObjectReference', 0, 0],
    ['datastoreNamespaceManager', 'ManagedObjectReference', 0, 0],
    ['virtualDiskManager', 'ManagedObjectReference', 0, 0],
    ['virtualizationManager', 'ManagedObjectReference', 0, 0],
    ['snmpSystem', 'ManagedObjectReference', 0, 0],
    ['vmProvisioningChecker', 'ManagedObjectReference', 0, 0],
    ['vmCompatibilityChecker', 'ManagedObjectReference', 0, 0],
    ['ovfManager', 'ManagedObjectReference', 0, 0],
    ['ipPoolManager', 'ManagedObjectReference', 0, 0],
    ['dvSwitchManager', 'ManagedObjectReference', 0, 0],
    ['hostProfileManager', 'ManagedObjectReference', 0, 0],
    ['clusterProfileManager', 'ManagedObjectReference', 0, 0],
    ['complianceManager', 'ManagedObjectReference', 0, 0],
    ['localizationManager', 'ManagedObjectReference', 0, 0],
    ['storageResourceManager', 'ManagedObjectReference', 0, 0],
    ['guestOperationsManager', 'ManagedObjectReference', 0, 0],
    ['overheadMemoryManager', 'ManagedObjectReference', 0, 0],
    ['certificateManager', 'ManagedObjectReference', 0, 0],
    ['ioFilterManager', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
