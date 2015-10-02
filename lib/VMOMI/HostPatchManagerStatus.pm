package VMOMI::HostPatchManagerStatus;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', undef, 0, 1],
    ['applicable', 'boolean', 0, 1],
    ['reason', undef, 1, 0],
    ['integrity', undef, 0, 0],
    ['installed', 'boolean', 0, 1],
    ['installState', undef, 1, 0],
    ['prerequisitePatch', 'HostPatchManagerStatusPrerequisitePatch', 1, 0],
    ['restartRequired', 'boolean', 0, 1],
    ['reconnectRequired', 'boolean', 0, 1],
    ['vmOffRequired', 'boolean', 0, 1],
    ['supersededPatchIds', undef, 1, 0],
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
