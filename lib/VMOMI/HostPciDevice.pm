package VMOMI::HostPciDevice;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', undef, 0, 1],
    ['classId', undef, 0, 1],
    ['bus', undef, 0, 1],
    ['slot', undef, 0, 1],
    ['function', undef, 0, 1],
    ['vendorId', undef, 0, 1],
    ['subVendorId', undef, 0, 1],
    ['vendorName', undef, 0, 1],
    ['deviceId', undef, 0, 1],
    ['subDeviceId', undef, 0, 1],
    ['parentBridge', undef, 0, 0],
    ['deviceName', undef, 0, 1],
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
