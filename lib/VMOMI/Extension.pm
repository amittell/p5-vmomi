package VMOMI::Extension;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['description', 'Description', 0, 1],
    ['key', undef, 0, 1],
    ['company', undef, 0, 0],
    ['type', undef, 0, 0],
    ['version', undef, 0, 1],
    ['subjectName', undef, 0, 0],
    ['server', 'ExtensionServerInfo', 1, 0],
    ['client', 'ExtensionClientInfo', 1, 0],
    ['taskList', 'ExtensionTaskTypeInfo', 1, 0],
    ['eventList', 'ExtensionEventTypeInfo', 1, 0],
    ['faultList', 'ExtensionFaultTypeInfo', 1, 0],
    ['privilegeList', 'ExtensionPrivilegeInfo', 1, 0],
    ['resourceList', 'ExtensionResourceInfo', 1, 0],
    ['lastHeartbeatTime', undef, 0, 1],
    ['healthInfo', 'ExtensionHealthInfo', 0, 0],
    ['ovfConsumerInfo', 'ExtensionOvfConsumerInfo', 0, 0],
    ['extendedProductInfo', 'ExtExtendedProductInfo', 0, 0],
    ['managedEntityInfo', 'ExtManagedEntityInfo', 1, 0],
    ['shownInSolutionManager', 'boolean', 0, 0],
    ['solutionManagerInfo', 'ExtSolutionManagerInfo', 0, 0],
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
