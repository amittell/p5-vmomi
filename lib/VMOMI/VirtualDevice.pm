package VMOMI::VirtualDevice;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['deviceInfo', 'Description', 0, 0],
    ['backing', 'VirtualDeviceBackingInfo', 0, 0],
    ['connectable', 'VirtualDeviceConnectInfo', 0, 0],
    ['slotInfo', 'VirtualDeviceBusSlotInfo', 0, 0],
    ['controllerKey', undef, 0, 0],
    ['unitNumber', undef, 0, 0],
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
