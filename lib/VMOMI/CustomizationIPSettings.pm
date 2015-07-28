package VMOMI::CustomizationIPSettings;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ip', 'CustomizationIpGenerator', 0, 1],
    ['subnetMask', undef, 0, 0],
    ['gateway', undef, 1, 0],
    ['ipV6Spec', 'CustomizationIPSettingsIpV6AddressSpec', 0, 0],
    ['dnsServerList', undef, 1, 0],
    ['dnsDomain', undef, 0, 0],
    ['primaryWINS', undef, 0, 0],
    ['secondaryWINS', undef, 0, 0],
    ['netBIOS', 'CustomizationNetBIOSMode', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
