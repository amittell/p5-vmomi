package VMOMI::VmCloneFailedEvent;
use parent 'VMOMI::VmCloneEvent';

our @class_ancestors = ( 
    'VmCloneEvent',
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['destFolder', 'FolderEventArgument', 0, 1],
    ['destName', undef, 0, 1],
    ['destHost', 'HostEventArgument', 0, 1],
    ['reason', 'LocalizedMethodFault', 0, 1],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
