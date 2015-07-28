package VMOMI::VirtualPS2ControllerOption;
use parent 'VMOMI::VirtualControllerOption';

our @class_members = ( 
    ['numKeyboards', 'IntOption', 0, 1],
    ['numPointingDevices', 'IntOption', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
