package VMOMI::AlarmStatusChangedEvent;
use parent 'VMOMI::AlarmEvent';

our @class_members = ( 
    ['source', 'ManagedEntityEventArgument', 0, 1],
    ['entity', 'ManagedEntityEventArgument', 0, 1],
    ['from', undef, 0, 1],
    ['to', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
