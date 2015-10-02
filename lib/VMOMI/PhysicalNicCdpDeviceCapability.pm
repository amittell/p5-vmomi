package VMOMI::PhysicalNicCdpDeviceCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['router', 'boolean', 0, 1],
    ['transparentBridge', 'boolean', 0, 1],
    ['sourceRouteBridge', 'boolean', 0, 1],
    ['networkSwitch', 'boolean', 0, 1],
    ['host', 'boolean', 0, 1],
    ['igmpEnabled', 'boolean', 0, 1],
    ['repeater', 'boolean', 0, 1],
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
