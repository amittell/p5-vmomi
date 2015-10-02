package VMOMI::VirtualResourcePoolUsage;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vrpId', undef, 0, 1],
    ['cpuReservationMhz', undef, 0, 1],
    ['memReservationMB', undef, 0, 1],
    ['cpuReservationUsedMhz', undef, 0, 1],
    ['memReservationUsedMB', undef, 0, 1],
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
