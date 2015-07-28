package VMOMI::VmInstanceUuidConflictEvent;
use parent 'VMOMI::VmEvent';

our @class_members = ( 
    ['conflictedVm', 'VmEventArgument', 0, 1],
    ['instanceUuid', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
