package VMOMI::VirtualEthernetCardOption;
use parent 'VMOMI::VirtualDeviceOption';

our @class_ancestors = ( 
    'VirtualDeviceOption',
    'DynamicData',
);

our @class_members = ( 
    ['supportedOUI', 'ChoiceOption', 0, 1],
    ['macType', 'ChoiceOption', 0, 1],
    ['wakeOnLanEnabled', 'BoolOption', 0, 1],
    ['vmDirectPathGen2Supported', 'boolean', 0, 0],
    ['uptCompatibilityEnabled', 'BoolOption', 0, 0],
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
