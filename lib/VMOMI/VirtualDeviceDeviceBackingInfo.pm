package VMOMI::VirtualDeviceDeviceBackingInfo;
use parent 'VMOMI::VirtualDeviceBackingInfo';

our @class_members = ( 
    ['deviceName', undef, 0, 1],
    ['useAutoDetect', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
