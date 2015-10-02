package VMOMI::EventAlarmExpression;
use parent 'VMOMI::AlarmExpression';

our @class_ancestors = ( 
    'AlarmExpression',
    'DynamicData',
);

our @class_members = ( 
    ['comparisons', 'EventAlarmExpressionComparison', 1, 0],
    ['eventType', undef, 0, 1],
    ['eventTypeId', undef, 0, 0],
    ['objectType', undef, 0, 0],
    ['status', 'ManagedEntityStatus', 0, 0],
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
