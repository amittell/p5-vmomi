package VMOMI::VirtualVideoCardOption;
use parent 'VMOMI::VirtualDeviceOption';

our @class_ancestors = ( 
    'VirtualDeviceOption',
    'DynamicData',
);

our @class_members = ( 
    ['videoRamSizeInKB', 'LongOption', 0, 0],
    ['numDisplays', 'IntOption', 0, 0],
    ['useAutoDetect', 'BoolOption', 0, 0],
    ['support3D', 'BoolOption', 0, 0],
    ['use3dRendererSupported', 'BoolOption', 0, 0],
    ['graphicsMemorySizeInKB', 'LongOption', 0, 0],
    ['graphicsMemorySizeSupported', 'BoolOption', 0, 0],
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
