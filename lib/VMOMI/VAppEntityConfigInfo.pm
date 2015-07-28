package VMOMI::VAppEntityConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', 'ManagedObjectReference', 0, 0],
    ['tag', undef, 0, 0],
    ['startOrder', undef, 0, 0],
    ['startDelay', undef, 0, 0],
    ['waitingForGuest', 'boolean', 0, 0],
    ['startAction', undef, 0, 0],
    ['stopDelay', undef, 0, 0],
    ['stopAction', undef, 0, 0],
    ['destroyWithParent', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
