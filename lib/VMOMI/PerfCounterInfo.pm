package VMOMI::PerfCounterInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['nameInfo', 'ElementDescription', 0, 1],
    ['groupInfo', 'ElementDescription', 0, 1],
    ['unitInfo', 'ElementDescription', 0, 1],
    ['rollupType', 'PerfSummaryType', 0, 1],
    ['statsType', 'PerfStatsType', 0, 1],
    ['level', undef, 0, 0],
    ['perDeviceLevel', undef, 0, 0],
    ['associatedCounterId', undef, 1, 0],
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
