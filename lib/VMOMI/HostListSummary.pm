package VMOMI::HostListSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 0],
    ['hardware', 'HostHardwareSummary', 0, 0],
    ['runtime', 'HostRuntimeInfo', 0, 0],
    ['config', 'HostConfigSummary', 0, 1],
    ['quickStats', 'HostListSummaryQuickStats', 0, 1],
    ['overallStatus', 'ManagedEntityStatus', 0, 1],
    ['rebootRequired', 'boolean', 0, 1],
    ['customValue', 'CustomFieldValue', 1, 0],
    ['managementServerIp', undef, 0, 0],
    ['maxEVCModeKey', undef, 0, 0],
    ['currentEVCModeKey', undef, 0, 0],
    ['gateway', 'HostListSummaryGatewaySummary', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
