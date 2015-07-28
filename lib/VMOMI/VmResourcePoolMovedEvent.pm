package VMOMI::VmResourcePoolMovedEvent;
use parent 'VMOMI::VmEvent';

our @class_members = ( 
    ['oldParent', 'ResourcePoolEventArgument', 0, 1],
    ['newParent', 'ResourcePoolEventArgument', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;