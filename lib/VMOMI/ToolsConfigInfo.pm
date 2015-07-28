package VMOMI::ToolsConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['toolsVersion', undef, 0, 0],
    ['afterPowerOn', 'boolean', 0, 0],
    ['afterResume', 'boolean', 0, 0],
    ['beforeGuestStandby', 'boolean', 0, 0],
    ['beforeGuestShutdown', 'boolean', 0, 0],
    ['beforeGuestReboot', 'boolean', 0, 0],
    ['toolsUpgradePolicy', undef, 0, 0],
    ['pendingCustomization', undef, 0, 0],
    ['syncTimeWithHost', 'boolean', 0, 0],
    ['lastInstallInfo', 'ToolsConfigInfoToolsLastInstallInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
