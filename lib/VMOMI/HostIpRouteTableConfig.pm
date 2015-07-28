package VMOMI::HostIpRouteTableConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ipRoute', 'HostIpRouteOp', 1, 0],
    ['ipv6Route', 'HostIpRouteOp', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
