package VMOMI::TaskFilterSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['entity', 'TaskFilterSpecByEntity', 0, 0],
    ['time', 'TaskFilterSpecByTime', 0, 0],
    ['userName', 'TaskFilterSpecByUsername', 0, 0],
    ['activationId', undef, 1, 0],
    ['state', 'TaskInfoState', 1, 0],
    ['alarm', 'ManagedObjectReference', 0, 0],
    ['scheduledTask', 'ManagedObjectReference', 0, 0],
    ['eventChainId', undef, 1, 0],
    ['tag', undef, 1, 0],
    ['parentTaskKey', undef, 1, 0],
    ['rootTaskKey', undef, 1, 0],
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
