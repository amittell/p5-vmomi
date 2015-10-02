package VMOMI::MetricAlarmExpression;
use parent 'VMOMI::AlarmExpression';

our @class_ancestors = ( 
    'AlarmExpression',
    'DynamicData',
);

our @class_members = ( 
    ['operator', 'MetricAlarmOperator', 0, 1],
    ['type', undef, 0, 1],
    ['metric', 'PerfMetricId', 0, 1],
    ['yellow', undef, 0, 0],
    ['yellowInterval', undef, 0, 0],
    ['red', undef, 0, 0],
    ['redInterval', undef, 0, 0],
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
