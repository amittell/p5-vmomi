package VMOMI::VirtualDiskFlatVer1BackingInfo;
use parent 'VMOMI::VirtualDeviceFileBackingInfo';

our @class_members = ( 
    ['diskMode', undef, 0, 1],
    ['split', 'boolean', 0, 0],
    ['writeThrough', 'boolean', 0, 0],
    ['contentId', undef, 0, 0],
    ['parent', 'VirtualDiskFlatVer1BackingInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
