package VMOMI::HostInternetScsiHbaIPv6Properties;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['iscsiIpv6Address', 'HostInternetScsiHbaIscsiIpv6Address', 1, 0],
    ['ipv6DhcpConfigurationEnabled', 'boolean', 0, 0],
    ['ipv6LinkLocalAutoConfigurationEnabled', 'boolean', 0, 0],
    ['ipv6RouterAdvertisementConfigurationEnabled', 'boolean', 0, 0],
    ['ipv6DefaultGateway', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
