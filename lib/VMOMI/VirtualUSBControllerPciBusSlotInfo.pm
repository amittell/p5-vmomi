package VMOMI::VirtualUSBControllerPciBusSlotInfo;
use parent 'VMOMI::VirtualDevicePciBusSlotInfo';

our @class_members = ( 
    ['ehciPciSlotNumber', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;