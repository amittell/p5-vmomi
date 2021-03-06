package VMOMI::HostNetStackInstance;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 0],
    ['name', undef, 0, 0],
    ['dnsConfig', 'HostDnsConfig', 0, 0],
    ['ipRouteConfig', 'HostIpRouteConfig', 0, 0],
    ['requestedMaxNumberOfConnections', undef, 0, 0],
    ['congestionControlAlgorithm', undef, 0, 0],
    ['ipV6Enabled', 'boolean', 0, 0],
    ['routeTableConfig', 'HostIpRouteTableConfig', 0, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
