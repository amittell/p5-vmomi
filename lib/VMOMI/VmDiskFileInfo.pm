package VMOMI::VmDiskFileInfo;
use parent 'VMOMI::FileInfo';

our @class_ancestors = ( 
    'FileInfo',
    'DynamicData',
);

our @class_members = ( 
    ['diskType', undef, 0, 0],
    ['capacityKb', undef, 0, 0],
    ['hardwareVersion', undef, 0, 0],
    ['controllerType', undef, 0, 0],
    ['diskExtents', undef, 1, 0],
    ['thin', 'boolean', 0, 0],
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
