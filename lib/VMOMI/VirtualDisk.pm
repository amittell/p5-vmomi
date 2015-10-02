package VMOMI::VirtualDisk;
use parent 'VMOMI::VirtualDevice';

our @class_ancestors = ( 
    'VirtualDevice',
    'DynamicData',
);

our @class_members = ( 
    ['capacityInKB', undef, 0, 1],
    ['capacityInBytes', undef, 0, 0],
    ['shares', 'SharesInfo', 0, 0],
    ['storageIOAllocation', 'StorageIOAllocationInfo', 0, 0],
    ['diskObjectId', undef, 0, 0],
    ['vFlashCacheConfigInfo', 'VirtualDiskVFlashCacheConfigInfo', 0, 0],
    ['iofilter', undef, 1, 0],
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
