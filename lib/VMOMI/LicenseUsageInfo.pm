package VMOMI::LicenseUsageInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['source', 'LicenseSource', 0, 1],
    ['sourceAvailable', 'boolean', 0, 1],
    ['reservationInfo', 'LicenseReservationInfo', 1, 0],
    ['featureInfo', 'LicenseFeatureInfo', 1, 0],
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
