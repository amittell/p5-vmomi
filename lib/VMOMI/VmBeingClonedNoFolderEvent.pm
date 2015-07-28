package VMOMI::VmBeingClonedNoFolderEvent;
use parent 'VMOMI::VmCloneEvent';

our @class_members = ( 
    ['destName', undef, 0, 1],
    ['destHost', 'HostEventArgument', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
