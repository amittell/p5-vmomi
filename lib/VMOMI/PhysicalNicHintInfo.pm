package VMOMI::PhysicalNicHintInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['device', undef, 0, 1],
    ['subnet', 'PhysicalNicIpHint', 1, 0],
    ['network', 'PhysicalNicNameHint', 1, 0],
    ['connectedSwitchPort', 'PhysicalNicCdpInfo', 0, 0],
    ['lldpInfo', 'LinkLayerDiscoveryProtocolInfo', 0, 0],
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
