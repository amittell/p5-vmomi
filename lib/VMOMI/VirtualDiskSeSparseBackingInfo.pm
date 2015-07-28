package VMOMI::VirtualDiskSeSparseBackingInfo;
use parent 'VMOMI::VirtualDeviceFileBackingInfo';

our @class_members = ( 
    ['diskMode', undef, 0, 1],
    ['writeThrough', 'boolean', 0, 0],
    ['uuid', undef, 0, 0],
    ['contentId', undef, 0, 0],
    ['changeId', undef, 0, 0],
    ['parent', 'VirtualDiskSeSparseBackingInfo', 0, 0],
    ['deltaDiskFormat', undef, 0, 0],
    ['digestEnabled', 'boolean', 0, 0],
    ['grainSize', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
