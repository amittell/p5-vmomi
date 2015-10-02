package VMOMI::HostInternetScsiHbaDiscoveryProperties;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['iSnsDiscoveryEnabled', 'boolean', 0, 1],
    ['iSnsDiscoveryMethod', undef, 0, 0],
    ['iSnsHost', undef, 0, 0],
    ['slpDiscoveryEnabled', 'boolean', 0, 1],
    ['slpDiscoveryMethod', undef, 0, 0],
    ['slpHost', undef, 0, 0],
    ['staticTargetDiscoveryEnabled', 'boolean', 0, 1],
    ['sendTargetsDiscoveryEnabled', 'boolean', 0, 1],
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
