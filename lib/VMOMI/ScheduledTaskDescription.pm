package VMOMI::ScheduledTaskDescription;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['action', 'TypeDescription', 1, 1],
    ['schedulerInfo', 'ScheduledTaskDetail', 1, 1],
    ['state', 'ElementDescription', 1, 1],
    ['dayOfWeek', 'ElementDescription', 1, 1],
    ['weekOfMonth', 'ElementDescription', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
