package VMOMI::VirtualMachineVMCIDevice;
use parent 'VMOMI::VirtualDevice';

our @class_members = ( 
    ['id', undef, 0, 0],
    ['allowUnrestrictedCommunication', 'boolean', 0, 0],
    ['filterEnable', 'boolean', 0, 0],
    ['filterInfo', 'VirtualMachineVMCIDeviceFilterInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
