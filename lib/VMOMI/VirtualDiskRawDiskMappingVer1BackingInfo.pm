package VMOMI::VirtualDiskRawDiskMappingVer1BackingInfo;
use parent 'VMOMI::VirtualDeviceFileBackingInfo';

our @class_members = ( 
    ['lunUuid', undef, 0, 0],
    ['deviceName', undef, 0, 0],
    ['compatibilityMode', undef, 0, 0],
    ['diskMode', undef, 0, 0],
    ['uuid', undef, 0, 0],
    ['contentId', undef, 0, 0],
    ['changeId', undef, 0, 0],
    ['parent', 'VirtualDiskRawDiskMappingVer1BackingInfo', 0, 0],
    ['sharing', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
