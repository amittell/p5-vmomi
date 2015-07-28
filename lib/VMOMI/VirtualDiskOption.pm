package VMOMI::VirtualDiskOption;
use parent 'VMOMI::VirtualDeviceOption';

our @class_members = ( 
    ['capacityInKB', 'LongOption', 0, 1],
    ['ioAllocationOption', 'StorageIOAllocationOption', 0, 0],
    ['vFlashCacheConfigOption', 'VirtualDiskOptionVFlashCacheConfigOption', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
