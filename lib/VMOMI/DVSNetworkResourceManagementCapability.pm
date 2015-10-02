package VMOMI::DVSNetworkResourceManagementCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['networkResourceManagementSupported', 'boolean', 0, 1],
    ['networkResourcePoolHighShareValue', undef, 0, 1],
    ['qosSupported', 'boolean', 0, 1],
    ['userDefinedNetworkResourcePoolsSupported', 'boolean', 0, 1],
    ['networkResourceControlVersion3Supported', 'boolean', 0, 0],
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
