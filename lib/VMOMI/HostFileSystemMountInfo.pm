package VMOMI::HostFileSystemMountInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['mountInfo', 'HostMountInfo', 0, 1],
    ['volume', 'HostFileSystemVolume', 0, 1],
    ['vStorageSupport', undef, 0, 0],
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
