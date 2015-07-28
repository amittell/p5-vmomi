package VMOMI::VirtualSerialPortPipeBackingInfo;
use parent 'VMOMI::VirtualDevicePipeBackingInfo';

our @class_members = ( 
    ['endpoint', undef, 0, 1],
    ['noRxLoss', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
