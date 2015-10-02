package VMOMI::PhysicalNicCdpInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['cdpVersion', undef, 0, 0],
    ['timeout', undef, 0, 0],
    ['ttl', undef, 0, 0],
    ['samples', undef, 0, 0],
    ['devId', undef, 0, 0],
    ['address', undef, 0, 0],
    ['portId', undef, 0, 0],
    ['deviceCapability', 'PhysicalNicCdpDeviceCapability', 0, 0],
    ['softwareVersion', undef, 0, 0],
    ['hardwarePlatform', undef, 0, 0],
    ['ipPrefix', undef, 0, 0],
    ['ipPrefixLen', undef, 0, 0],
    ['vlan', undef, 0, 0],
    ['fullDuplex', 'boolean', 0, 0],
    ['mtu', undef, 0, 0],
    ['systemName', undef, 0, 0],
    ['systemOID', undef, 0, 0],
    ['mgmtAddr', undef, 0, 0],
    ['location', undef, 0, 0],
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
