package VMOMI::InventoryDescription;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['numHosts', undef, 0, 1],
    ['numVirtualMachines', undef, 0, 1],
    ['numResourcePools', undef, 0, 0],
    ['numClusters', undef, 0, 0],
    ['numCpuDev', undef, 0, 0],
    ['numNetDev', undef, 0, 0],
    ['numDiskDev', undef, 0, 0],
    ['numvCpuDev', undef, 0, 0],
    ['numvNetDev', undef, 0, 0],
    ['numvDiskDev', undef, 0, 0],
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
