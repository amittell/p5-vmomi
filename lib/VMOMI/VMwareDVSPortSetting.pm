package VMOMI::VMwareDVSPortSetting;
use parent 'VMOMI::DVPortSetting';

our @class_members = ( 
    ['vlan', 'VmwareDistributedVirtualSwitchVlanSpec', 0, 0],
    ['qosTag', 'IntPolicy', 0, 0],
    ['uplinkTeamingPolicy', 'VmwareUplinkPortTeamingPolicy', 0, 0],
    ['securityPolicy', 'DVSSecurityPolicy', 0, 0],
    ['ipfixEnabled', 'BoolPolicy', 0, 0],
    ['txUplink', 'BoolPolicy', 0, 0],
    ['lacpPolicy', 'VMwareUplinkLacpPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
