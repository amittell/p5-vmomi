package VMOMI::HttpNfcLeaseInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['lease', 'ManagedObjectReference', 0, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
    ['deviceUrl', 'HttpNfcLeaseDeviceUrl', 1, 0],
    ['totalDiskCapacityInKB', undef, 0, 1],
    ['leaseTimeout', undef, 0, 1],
    ['hostMap', 'HttpNfcLeaseDatastoreLeaseInfo', 1, 0],
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
