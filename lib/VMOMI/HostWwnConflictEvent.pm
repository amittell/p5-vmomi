package VMOMI::HostWwnConflictEvent;
use parent 'VMOMI::HostEvent';

our @class_members = ( 
    ['conflictedVms', 'VmEventArgument', 1, 0],
    ['conflictedHosts', 'HostEventArgument', 1, 0],
    ['wwn', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
