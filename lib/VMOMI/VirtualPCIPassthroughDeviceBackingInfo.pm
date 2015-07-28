package VMOMI::VirtualPCIPassthroughDeviceBackingInfo;
use parent 'VMOMI::VirtualDeviceDeviceBackingInfo';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['deviceId', undef, 0, 1],
    ['systemId', undef, 0, 1],
    ['vendorId', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
