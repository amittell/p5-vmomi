package VMOMI::HostLicenseSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['source', 'LicenseSource', 0, 0],
    ['editionKey', undef, 0, 0],
    ['disabledFeatureKey', undef, 1, 0],
    ['enabledFeatureKey', undef, 1, 0],
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
