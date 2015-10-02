package VMOMI::VmDiskFileQueryFlags;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['diskType', 'boolean', 0, 1],
    ['capacityKb', 'boolean', 0, 1],
    ['hardwareVersion', 'boolean', 0, 1],
    ['controllerType', 'boolean', 0, 0],
    ['diskExtents', 'boolean', 0, 0],
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
