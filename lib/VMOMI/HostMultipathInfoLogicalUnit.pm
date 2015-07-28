package VMOMI::HostMultipathInfoLogicalUnit;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['id', undef, 0, 1],
    ['lun', undef, 0, 1],
    ['path', 'HostMultipathInfoPath', 1, 1],
    ['policy', 'HostMultipathInfoLogicalUnitPolicy', 0, 1],
    ['storageArrayTypePolicy', 'HostMultipathInfoLogicalUnitStorageArrayTypePolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
