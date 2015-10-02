package VMOMI::VirtualDiskFlatVer2BackingOption;
use parent 'VMOMI::VirtualDeviceFileBackingOption';

our @class_ancestors = ( 
    'VirtualDeviceFileBackingOption',
    'VirtualDeviceBackingOption',
    'DynamicData',
);

our @class_members = ( 
    ['diskMode', 'ChoiceOption', 0, 1],
    ['split', 'BoolOption', 0, 1],
    ['writeThrough', 'BoolOption', 0, 1],
    ['growable', 'boolean', 0, 1],
    ['hotGrowable', 'boolean', 0, 1],
    ['uuid', 'boolean', 0, 1],
    ['thinProvisioned', 'BoolOption', 0, 0],
    ['eagerlyScrub', 'BoolOption', 0, 0],
    ['deltaDiskFormat', 'ChoiceOption', 0, 0],
    ['deltaDiskFormatsSupported', 'VirtualDiskDeltaDiskFormatsSupported', 1, 0],
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
