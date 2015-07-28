package VMOMI::VirtualDiskRawDiskVer2BackingOption;
use parent 'VMOMI::VirtualDeviceDeviceBackingOption';

our @class_members = ( 
    ['descriptorFileNameExtensions', 'ChoiceOption', 0, 1],
    ['uuid', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
