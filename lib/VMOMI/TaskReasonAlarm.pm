package VMOMI::TaskReasonAlarm;
use parent 'VMOMI::TaskReason';

our @class_members = ( 
    ['alarmName', undef, 0, 1],
    ['alarm', 'ManagedObjectReference', 0, 1],
    ['entityName', undef, 0, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
