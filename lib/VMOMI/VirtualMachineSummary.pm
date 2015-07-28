package VMOMI::VirtualMachineSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 0],
    ['runtime', 'VirtualMachineRuntimeInfo', 0, 1],
    ['guest', 'VirtualMachineGuestSummary', 0, 0],
    ['config', 'VirtualMachineConfigSummary', 0, 1],
    ['storage', 'VirtualMachineStorageSummary', 0, 0],
    ['quickStats', 'VirtualMachineQuickStats', 0, 1],
    ['overallStatus', 'ManagedEntityStatus', 0, 1],
    ['customValue', 'CustomFieldValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
