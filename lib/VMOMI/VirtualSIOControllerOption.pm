package VMOMI::VirtualSIOControllerOption;
use parent 'VMOMI::VirtualControllerOption';

our @class_ancestors = ( 
    'VirtualControllerOption',
    'VirtualDeviceOption',
    'DynamicData',
);

our @class_members = ( 
    ['numFloppyDrives', 'IntOption', 0, 1],
    ['numSerialPorts', 'IntOption', 0, 1],
    ['numParallelPorts', 'IntOption', 0, 1],
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
