package VMOMI::HostNetCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['canSetPhysicalNicLinkSpeed', 'boolean', 0, 1],
    ['supportsNicTeaming', 'boolean', 0, 1],
    ['nicTeamingPolicy', undef, 1, 0],
    ['supportsVlan', 'boolean', 0, 1],
    ['usesServiceConsoleNic', 'boolean', 0, 1],
    ['supportsNetworkHints', 'boolean', 0, 1],
    ['maxPortGroupsPerVswitch', undef, 0, 0],
    ['vswitchConfigSupported', 'boolean', 0, 1],
    ['vnicConfigSupported', 'boolean', 0, 1],
    ['ipRouteConfigSupported', 'boolean', 0, 1],
    ['dnsConfigSupported', 'boolean', 0, 1],
    ['dhcpOnVnicSupported', 'boolean', 0, 1],
    ['ipV6Supported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
