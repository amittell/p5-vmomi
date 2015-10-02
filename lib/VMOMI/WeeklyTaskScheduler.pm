package VMOMI::WeeklyTaskScheduler;
use parent 'VMOMI::DailyTaskScheduler';

our @class_ancestors = ( 
    'DailyTaskScheduler',
    'HourlyTaskScheduler',
    'RecurrentTaskScheduler',
    'TaskScheduler',
    'DynamicData',
);

our @class_members = ( 
    ['sunday', 'boolean', 0, 1],
    ['monday', 'boolean', 0, 1],
    ['tuesday', 'boolean', 0, 1],
    ['wednesday', 'boolean', 0, 1],
    ['thursday', 'boolean', 0, 1],
    ['friday', 'boolean', 0, 1],
    ['saturday', 'boolean', 0, 1],
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
