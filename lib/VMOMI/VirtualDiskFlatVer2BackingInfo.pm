package VMOMI::VirtualDiskFlatVer2BackingInfo;
use parent 'VMOMI::VirtualDeviceFileBackingInfo';

our @class_ancestors = ( 
    'VirtualDeviceFileBackingInfo',
    'VirtualDeviceBackingInfo',
    'DynamicData',
);

our @class_members = ( 
    ['diskMode', undef, 0, 1],
    ['split', 'boolean', 0, 0],
    ['writeThrough', 'boolean', 0, 0],
    ['thinProvisioned', 'boolean', 0, 0],
    ['eagerlyScrub', 'boolean', 0, 0],
    ['uuid', undef, 0, 0],
    ['contentId', undef, 0, 0],
    ['changeId', undef, 0, 0],
    ['parent', 'VirtualDiskFlatVer2BackingInfo', 0, 0],
    ['deltaDiskFormat', undef, 0, 0],
    ['digestEnabled', 'boolean', 0, 0],
    ['deltaGrainSize', undef, 0, 0],
    ['deltaDiskFormatVariant', undef, 0, 0],
    ['sharing', undef, 0, 0],
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
