package VMOMI::HostInternetScsiHbaIPProperties;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['mac', undef, 0, 0],
    ['address', undef, 0, 0],
    ['dhcpConfigurationEnabled', 'boolean', 0, 1],
    ['subnetMask', undef, 0, 0],
    ['defaultGateway', undef, 0, 0],
    ['primaryDnsServerAddress', undef, 0, 0],
    ['alternateDnsServerAddress', undef, 0, 0],
    ['ipv6Address', undef, 0, 0],
    ['ipv6SubnetMask', undef, 0, 0],
    ['ipv6DefaultGateway', undef, 0, 0],
    ['arpRedirectEnabled', 'boolean', 0, 0],
    ['mtu', undef, 0, 0],
    ['jumboFramesEnabled', 'boolean', 0, 0],
    ['ipv4Enabled', 'boolean', 0, 0],
    ['ipv6Enabled', 'boolean', 0, 0],
    ['ipv6properties', 'HostInternetScsiHbaIPv6Properties', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
