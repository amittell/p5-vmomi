package VMOMI::HostStorageDeviceInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['hostBusAdapter', 'HostHostBusAdapter', 1, 0],
    ['scsiLun', 'ScsiLun', 1, 0],
    ['scsiTopology', 'HostScsiTopology', 0, 0],
    ['multipathInfo', 'HostMultipathInfo', 0, 0],
    ['plugStoreTopology', 'HostPlugStoreTopology', 0, 0],
    ['softwareInternetScsiEnabled', 'boolean', 0, 1],
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
