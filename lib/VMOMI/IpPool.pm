package VMOMI::IpPool;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', undef, 0, 0],
    ['name', undef, 0, 0],
    ['ipv4Config', 'IpPoolIpPoolConfigInfo', 0, 0],
    ['ipv6Config', 'IpPoolIpPoolConfigInfo', 0, 0],
    ['dnsDomain', undef, 0, 0],
    ['dnsSearchPath', undef, 0, 0],
    ['hostPrefix', undef, 0, 0],
    ['httpProxy', undef, 0, 0],
    ['networkAssociation', 'IpPoolAssociation', 1, 0],
    ['availableIpv4Addresses', undef, 0, 0],
    ['availableIpv6Addresses', undef, 0, 0],
    ['allocatedIpv4Addresses', undef, 0, 0],
    ['allocatedIpv6Addresses', undef, 0, 0],
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
