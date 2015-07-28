package VMOMI::VirtualDiskSeSparseBackingOption;
use parent 'VMOMI::VirtualDeviceFileBackingOption';

our @class_members = ( 
    ['diskMode', 'ChoiceOption', 0, 1],
    ['writeThrough', 'BoolOption', 0, 1],
    ['growable', 'boolean', 0, 1],
    ['hotGrowable', 'boolean', 0, 1],
    ['uuid', 'boolean', 0, 1],
    ['deltaDiskFormatsSupported', 'VirtualDiskDeltaDiskFormatsSupported', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
