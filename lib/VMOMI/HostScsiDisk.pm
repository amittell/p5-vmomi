package VMOMI::HostScsiDisk;
use parent 'VMOMI::ScsiLun';

our @class_ancestors = ( 
    'ScsiLun',
    'HostDevice',
    'DynamicData',
);

our @class_members = ( 
    ['capacity', 'HostDiskDimensionsLba', 0, 1],
    ['devicePath', undef, 0, 1],
    ['ssd', 'boolean', 0, 0],
    ['localDisk', 'boolean', 0, 0],
    ['physicalLocation', undef, 1, 0],
    ['emulatedDIXDIFEnabled', 'boolean', 0, 0],
    ['vsanDiskInfo', 'VsanHostVsanDiskInfo', 0, 0],
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
