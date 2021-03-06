package VMOMI::HostUnresolvedVmfsVolume;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['extent', 'HostUnresolvedVmfsExtent', 1, 1],
    ['vmfsLabel', undef, 0, 1],
    ['vmfsUuid', undef, 0, 1],
    ['totalBlocks', undef, 0, 1],
    ['resolveStatus', 'HostUnresolvedVmfsVolumeResolveStatus', 0, 1],
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
