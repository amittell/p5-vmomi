package VMOMI::VirtualDeviceConnectInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['startConnected', 'boolean', 0, 1],
    ['allowGuestControl', 'boolean', 0, 1],
    ['connected', 'boolean', 0, 1],
    ['status', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
