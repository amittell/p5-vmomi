package VMOMI::VirtualUSBRemoteHostBackingInfo;
use parent 'VMOMI::VirtualDeviceDeviceBackingInfo';

our @class_ancestors = ( 
    'VirtualDeviceDeviceBackingInfo',
    'VirtualDeviceBackingInfo',
    'DynamicData',
);

our @class_members = ( 
    ['hostname', undef, 0, 1],
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
