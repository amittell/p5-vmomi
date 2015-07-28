package VMOMI::HostInternetScsiHbaIPCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['addressSettable', 'boolean', 0, 1],
    ['ipConfigurationMethodSettable', 'boolean', 0, 1],
    ['subnetMaskSettable', 'boolean', 0, 1],
    ['defaultGatewaySettable', 'boolean', 0, 1],
    ['primaryDnsServerAddressSettable', 'boolean', 0, 1],
    ['alternateDnsServerAddressSettable', 'boolean', 0, 1],
    ['ipv6Supported', 'boolean', 0, 0],
    ['arpRedirectSettable', 'boolean', 0, 0],
    ['mtuSettable', 'boolean', 0, 0],
    ['hostNameAsTargetAddress', 'boolean', 0, 0],
    ['nameAliasSettable', 'boolean', 0, 0],
    ['ipv4EnableSettable', 'boolean', 0, 0],
    ['ipv6EnableSettable', 'boolean', 0, 0],
    ['ipv6PrefixLengthSettable', 'boolean', 0, 0],
    ['ipv6PrefixLength', undef, 0, 0],
    ['ipv6DhcpConfigurationSettable', 'boolean', 0, 0],
    ['ipv6LinkLocalAutoConfigurationSettable', 'boolean', 0, 0],
    ['ipv6RouterAdvertisementConfigurationSettable', 'boolean', 0, 0],
    ['ipv6DefaultGatewaySettable', 'boolean', 0, 0],
    ['ipv6MaxStaticAddressesSupported', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
