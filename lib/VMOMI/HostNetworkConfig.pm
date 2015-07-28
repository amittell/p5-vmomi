package VMOMI::HostNetworkConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vswitch', 'HostVirtualSwitchConfig', 1, 0],
    ['proxySwitch', 'HostProxySwitchConfig', 1, 0],
    ['portgroup', 'HostPortGroupConfig', 1, 0],
    ['pnic', 'PhysicalNicConfig', 1, 0],
    ['vnic', 'HostVirtualNicConfig', 1, 0],
    ['consoleVnic', 'HostVirtualNicConfig', 1, 0],
    ['dnsConfig', 'HostDnsConfig', 0, 0],
    ['ipRouteConfig', 'HostIpRouteConfig', 0, 0],
    ['consoleIpRouteConfig', 'HostIpRouteConfig', 0, 0],
    ['routeTableConfig', 'HostIpRouteTableConfig', 0, 0],
    ['dhcp', 'HostDhcpServiceConfig', 1, 0],
    ['nat', 'HostNatServiceConfig', 1, 0],
    ['ipV6Enabled', 'boolean', 0, 0],
    ['netStackSpec', 'HostNetworkConfigNetStackSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
