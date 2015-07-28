package VMOMI::PermissionAddedEvent;
use parent 'VMOMI::PermissionEvent';

our @class_members = ( 
    ['role', 'RoleEventArgument', 0, 1],
    ['propagate', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
