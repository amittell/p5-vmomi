package VMOMI::VirtualSerialPortPipeBackingOption;
use parent 'VMOMI::VirtualDevicePipeBackingOption';

our @class_members = ( 
    ['endpoint', 'ChoiceOption', 0, 1],
    ['noRxLoss', 'BoolOption', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
