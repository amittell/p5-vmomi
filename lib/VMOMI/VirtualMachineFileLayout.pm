package VMOMI::VirtualMachineFileLayout;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['configFile', undef, 1, 0],
    ['logFile', undef, 1, 0],
    ['disk', 'VirtualMachineFileLayoutDiskLayout', 1, 0],
    ['snapshot', 'VirtualMachineFileLayoutSnapshotLayout', 1, 0],
    ['swapFile', undef, 0, 0],
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
