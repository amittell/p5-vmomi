package VMOMI::DvsVmVnicNetworkResourcePoolRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 0],
    ['capacity', undef, 0, 0],
    ['usage', undef, 0, 0],
    ['available', undef, 0, 0],
    ['status', undef, 0, 1],
    ['allocatedResource', 'DvsVnicAllocatedResource', 1, 0],
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
