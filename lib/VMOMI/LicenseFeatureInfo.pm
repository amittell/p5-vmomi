package VMOMI::LicenseFeatureInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['featureName', undef, 0, 1],
    ['featureDescription', undef, 0, 0],
    ['state', 'LicenseFeatureInfoState', 0, 0],
    ['costUnit', undef, 0, 1],
    ['sourceRestriction', undef, 0, 0],
    ['dependentKey', undef, 1, 0],
    ['edition', 'boolean', 0, 0],
    ['expiresOn', undef, 0, 0],
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
