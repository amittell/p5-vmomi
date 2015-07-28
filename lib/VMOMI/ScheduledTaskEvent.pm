package VMOMI::ScheduledTaskEvent;
use parent 'VMOMI::Event';

our @class_members = ( 
    ['scheduledTask', 'ScheduledTaskEventArgument', 0, 1],
    ['entity', 'ManagedEntityEventArgument', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;