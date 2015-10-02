package VMOMI::DistributedVirtualPortgroupInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['switchName', undef, 0, 1],
    ['switchUuid', undef, 0, 1],
    ['portgroupName', undef, 0, 1],
    ['portgroupKey', undef, 0, 1],
    ['portgroupType', undef, 0, 1],
    ['uplinkPortgroup', 'boolean', 0, 1],
    ['portgroup', 'ManagedObjectReference', 0, 1],
    ['networkReservationSupported', 'boolean', 0, 0],
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
