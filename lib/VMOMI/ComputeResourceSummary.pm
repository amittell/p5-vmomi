package VMOMI::ComputeResourceSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['totalCpu', undef, 0, 1],
    ['totalMemory', undef, 0, 1],
    ['numCpuCores', undef, 0, 1],
    ['numCpuThreads', undef, 0, 1],
    ['effectiveCpu', undef, 0, 1],
    ['effectiveMemory', undef, 0, 1],
    ['numHosts', undef, 0, 1],
    ['numEffectiveHosts', undef, 0, 1],
    ['overallStatus', 'ManagedEntityStatus', 0, 1],
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
