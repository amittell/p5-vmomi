package VMOMI::ClusterDasAamHostInfo;
use parent 'VMOMI::ClusterDasHostInfo';

our @class_ancestors = ( 
    'ClusterDasHostInfo',
    'DynamicData',
);

our @class_members = ( 
    ['hostDasState', 'ClusterDasAamNodeState', 1, 0],
    ['primaryHosts', undef, 1, 0],
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
