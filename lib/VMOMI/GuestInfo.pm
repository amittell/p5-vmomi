package VMOMI::GuestInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['toolsStatus', 'VirtualMachineToolsStatus', 0, 0],
    ['toolsVersionStatus', undef, 0, 0],
    ['toolsVersionStatus2', undef, 0, 0],
    ['toolsRunningStatus', undef, 0, 0],
    ['toolsVersion', undef, 0, 0],
    ['guestId', undef, 0, 0],
    ['guestFamily', undef, 0, 0],
    ['guestFullName', undef, 0, 0],
    ['hostName', undef, 0, 0],
    ['ipAddress', undef, 0, 0],
    ['net', 'GuestNicInfo', 1, 0],
    ['ipStack', 'GuestStackInfo', 1, 0],
    ['disk', 'GuestDiskInfo', 1, 0],
    ['screen', 'GuestScreenInfo', 0, 0],
    ['guestState', undef, 0, 1],
    ['appHeartbeatStatus', undef, 0, 0],
    ['guestKernelCrashed', 'boolean', 0, 0],
    ['appState', undef, 0, 0],
    ['guestOperationsReady', 'boolean', 0, 0],
    ['interactiveGuestOperationsReady', 'boolean', 0, 0],
    ['guestStateChangeSupported', 'boolean', 0, 0],
    ['generationInfo', 'GuestInfoNamespaceGenerationInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
