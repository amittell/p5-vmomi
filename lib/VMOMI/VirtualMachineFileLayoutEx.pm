package VMOMI::VirtualMachineFileLayoutEx;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['file', 'VirtualMachineFileLayoutExFileInfo', 1, 0],
    ['disk', 'VirtualMachineFileLayoutExDiskLayout', 1, 0],
    ['snapshot', 'VirtualMachineFileLayoutExSnapshotLayout', 1, 0],
    ['timestamp', undef, 0, 1],
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
