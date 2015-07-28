package VMOMI::VirtualMachineVideoCard;
use parent 'VMOMI::VirtualDevice';

our @class_members = ( 
    ['videoRamSizeInKB', undef, 0, 0],
    ['numDisplays', undef, 0, 0],
    ['useAutoDetect', 'boolean', 0, 0],
    ['enable3DSupport', 'boolean', 0, 0],
    ['use3dRenderer', undef, 0, 0],
    ['graphicsMemorySizeInKB', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
