package VMOMI::VirtualDeviceOption;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['type', undef, 0, 1],
    ['connectOption', 'VirtualDeviceConnectOption', 0, 0],
    ['busSlotOption', 'VirtualDeviceBusSlotOption', 0, 0],
    ['controllerType', undef, 0, 0],
    ['autoAssignController', 'BoolOption', 0, 0],
    ['backingOption', 'VirtualDeviceBackingOption', 1, 0],
    ['defaultBackingOptionIndex', undef, 0, 0],
    ['licensingLimit', undef, 1, 0],
    ['deprecated', 'boolean', 0, 1],
    ['plugAndPlay', 'boolean', 0, 1],
    ['hotRemoveSupported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
