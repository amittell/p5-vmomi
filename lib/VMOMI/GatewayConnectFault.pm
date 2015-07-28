package VMOMI::GatewayConnectFault;
use parent 'VMOMI::HostConnectFault';

our @class_members = ( 
    ['gatewayType', undef, 0, 1],
    ['gatewayId', undef, 0, 1],
    ['gatewayInfo', undef, 0, 1],
    ['details', 'LocalizableMessage', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
