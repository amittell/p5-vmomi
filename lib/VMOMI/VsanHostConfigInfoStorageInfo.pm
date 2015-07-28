package VMOMI::VsanHostConfigInfoStorageInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['autoClaimStorage', 'boolean', 0, 0],
    ['diskMapping', 'VsanHostDiskMapping', 1, 0],
    ['diskMapInfo', 'VsanHostDiskMapInfo', 1, 0],
    ['checksumEnabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
