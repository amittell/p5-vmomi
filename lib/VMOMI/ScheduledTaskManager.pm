package VMOMI::ScheduledTaskManager;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['description', 'ScheduledTaskDescription', 0, 1],
    ['scheduledTask', 'ManagedObjectReference', 1, 0], 
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;