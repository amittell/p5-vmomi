package VMOMI::VirtualUSBXHCIControllerOption;
use parent 'VMOMI::VirtualControllerOption';

our @class_members = ( 
    ['autoConnectDevices', 'BoolOption', 0, 1],
    ['supportedSpeeds', undef, 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;