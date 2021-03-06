package VMOMI::HostUnresolvedVmfsExtent;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['device', 'HostScsiDiskPartition', 0, 1],
    ['devicePath', undef, 0, 1],
    ['vmfsUuid', undef, 0, 1],
    ['isHeadExtent', 'boolean', 0, 1],
    ['ordinal', undef, 0, 1],
    ['startBlock', undef, 0, 1],
    ['endBlock', undef, 0, 1],
    ['reason', undef, 0, 1],
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
