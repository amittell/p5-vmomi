package VMOMI::HostVmfsVolume;
use parent 'VMOMI::HostFileSystemVolume';

our @class_ancestors = ( 
    'HostFileSystemVolume',
    'DynamicData',
);

our @class_members = ( 
    ['blockSizeMb', undef, 0, 1],
    ['maxBlocks', undef, 0, 1],
    ['majorVersion', undef, 0, 1],
    ['version', undef, 0, 1],
    ['uuid', undef, 0, 1],
    ['extent', 'HostScsiDiskPartition', 1, 1],
    ['vmfsUpgradable', 'boolean', 0, 1],
    ['forceMountedInfo', 'HostForceMountedInfo', 0, 0],
    ['ssd', 'boolean', 0, 0],
    ['local', 'boolean', 0, 0],
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
