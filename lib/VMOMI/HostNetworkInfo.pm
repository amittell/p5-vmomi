package VMOMI::HostNetworkInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vswitch', 'HostVirtualSwitch', 1, 0],
    ['proxySwitch', 'HostProxySwitch', 1, 0],
    ['portgroup', 'HostPortGroup', 1, 0],
    ['pnic', 'PhysicalNic', 1, 0],
    ['vnic', 'HostVirtualNic', 1, 0],
    ['consoleVnic', 'HostVirtualNic', 1, 0],
    ['dnsConfig', 'HostDnsConfig', 0, 0],
    ['ipRouteConfig', 'HostIpRouteConfig', 0, 0],
    ['consoleIpRouteConfig', 'HostIpRouteConfig', 0, 0],
    ['routeTableInfo', 'HostIpRouteTableInfo', 0, 0],
    ['dhcp', 'HostDhcpService', 1, 0],
    ['nat', 'HostNatService', 1, 0],
    ['ipV6Enabled', 'boolean', 0, 0],
    ['atBootIpV6Enabled', 'boolean', 0, 0],
    ['netStackInstance', 'HostNetStackInstance', 1, 0],
    ['opaqueSwitch', 'HostOpaqueSwitch', 1, 0],
    ['opaqueNetwork', 'HostOpaqueNetworkInfo', 1, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
