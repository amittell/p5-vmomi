package VMOMI::VmClonedEvent;
use parent 'VMOMI::VmCloneEvent';

our @class_ancestors = ( 
    'VmCloneEvent',
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['sourceVm', 'VmEventArgument', 0, 1],
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
