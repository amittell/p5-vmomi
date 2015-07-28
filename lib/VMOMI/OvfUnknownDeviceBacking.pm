package VMOMI::OvfUnknownDeviceBacking;
use parent 'VMOMI::OvfHardwareExport';

our @class_members = ( 
    ['backing', 'VirtualDeviceBackingInfo', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
