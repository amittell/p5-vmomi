package VMOMI::NetworkProfile;
use parent 'VMOMI::ApplyProfile';

our @class_ancestors = ( 
    'ApplyProfile',
    'DynamicData',
);

our @class_members = ( 
    ['vswitch', 'VirtualSwitchProfile', 1, 0],
    ['vmPortGroup', 'VmPortGroupProfile', 1, 0],
    ['hostPortGroup', 'HostPortGroupProfile', 1, 0],
    ['serviceConsolePortGroup', 'ServiceConsolePortGroupProfile', 1, 0],
    ['dnsConfig', 'NetworkProfileDnsConfigProfile', 0, 0],
    ['ipRouteConfig', 'IpRouteProfile', 0, 0],
    ['consoleIpRouteConfig', 'IpRouteProfile', 0, 0],
    ['pnic', 'PhysicalNicProfile', 1, 0],
    ['dvswitch', 'DvsProfile', 1, 0],
    ['dvsServiceConsoleNic', 'DvsServiceConsoleVNicProfile', 1, 0],
    ['dvsHostNic', 'DvsHostVNicProfile', 1, 0],
    ['netStackInstance', 'NetStackInstanceProfile', 1, 0],
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
