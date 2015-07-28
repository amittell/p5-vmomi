package VMOMI::LicenseDiagnostics;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['sourceLastChanged', undef, 0, 1],
    ['sourceLost', undef, 0, 1],
    ['sourceLatency', undef, 0, 1],
    ['licenseRequests', undef, 0, 1],
    ['licenseRequestFailures', undef, 0, 1],
    ['licenseFeatureUnknowns', undef, 0, 1],
    ['opState', 'LicenseManagerState', 0, 1],
    ['lastStatusUpdate', undef, 0, 1],
    ['opFailureMessage', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
