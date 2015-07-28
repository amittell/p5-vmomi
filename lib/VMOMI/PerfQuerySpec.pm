package VMOMI::PerfQuerySpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['entity', 'ManagedObjectReference', 0, 1],
    ['startTime', undef, 0, 0],
    ['endTime', undef, 0, 0],
    ['maxSample', undef, 0, 0],
    ['metricId', 'PerfMetricId', 1, 0],
    ['intervalId', undef, 0, 0],
    ['format', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
