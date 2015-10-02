package VMOMI::VirtualResourcePoolSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vrpId', undef, 0, 0],
    ['vrpName', undef, 0, 0],
    ['description', undef, 0, 0],
    ['cpuAllocation', 'VrpResourceAllocationInfo', 0, 1],
    ['memoryAllocation', 'VrpResourceAllocationInfo', 0, 1],
    ['rpList', 'ManagedObjectReference', 1, 0],
    ['hubList', 'ManagedObjectReference', 1, 0],
    ['rootVRP', 'boolean', 0, 0],
    ['staticVRP', 'boolean', 0, 0],
    ['changeVersion', undef, 0, 0],
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
