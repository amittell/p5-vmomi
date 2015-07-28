package VMOMI::VirtualControllerOption;
use parent 'VMOMI::VirtualDeviceOption';

our @class_members = ( 
    ['devices', 'IntOption', 0, 1],
    ['supportedDevice', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
