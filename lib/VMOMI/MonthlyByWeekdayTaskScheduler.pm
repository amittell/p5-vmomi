package VMOMI::MonthlyByWeekdayTaskScheduler;
use parent 'VMOMI::MonthlyTaskScheduler';

our @class_members = ( 
    ['offset', 'WeekOfMonth', 0, 1],
    ['weekday', 'DayOfWeek', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
