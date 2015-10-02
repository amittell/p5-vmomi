package VMOMI::DvsResourceRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['capacity', undef, 0, 0],
    ['usage', undef, 0, 0],
    ['available', undef, 0, 0],
    ['allocatedResource', 'DvsVnicAllocatedResource', 1, 0],
    ['vmVnicNetworkResourcePoolRuntime', 'DvsVmVnicNetworkResourcePoolRuntimeInfo', 1, 0],
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
