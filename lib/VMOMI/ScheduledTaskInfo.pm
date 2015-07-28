package VMOMI::ScheduledTaskInfo;
use parent 'VMOMI::ScheduledTaskSpec';

our @class_members = ( 
    ['scheduledTask', 'ManagedObjectReference', 0, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
    ['lastModifiedTime', undef, 0, 1],
    ['lastModifiedUser', undef, 0, 1],
    ['nextRunTime', undef, 0, 0],
    ['prevRunTime', undef, 0, 0],
    ['state', 'TaskInfoState', 0, 1],
    ['error', 'LocalizedMethodFault', 0, 0],
    ['result', undef, 0, 0],
    ['progress', undef, 0, 0],
    ['activeTask', 'ManagedObjectReference', 0, 0],
    ['taskObject', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
