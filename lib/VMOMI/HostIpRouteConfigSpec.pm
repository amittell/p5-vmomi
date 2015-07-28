package VMOMI::HostIpRouteConfigSpec;
use parent 'VMOMI::HostIpRouteConfig';

our @class_members = ( 
    ['gatewayDeviceConnection', 'HostVirtualNicConnection', 0, 0],
    ['ipV6GatewayDeviceConnection', 'HostVirtualNicConnection', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
