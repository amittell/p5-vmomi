package VMOMI::ClusterDrsMigration;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['time', undef, 0, 1],
    ['vm', 'ManagedObjectReference', 0, 1],
    ['cpuLoad', undef, 0, 0],
    ['memoryLoad', undef, 0, 0],
    ['source', 'ManagedObjectReference', 0, 1],
    ['sourceCpuLoad', undef, 0, 0],
    ['sourceMemoryLoad', undef, 0, 0],
    ['destination', 'ManagedObjectReference', 0, 1],
    ['destinationCpuLoad', undef, 0, 0],
    ['destinationMemoryLoad', undef, 0, 0],
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
