package VMOMI::LicenseManagerLicenseInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['licenseKey', undef, 0, 1],
    ['editionKey', undef, 0, 1],
    ['name', undef, 0, 1],
    ['total', undef, 0, 1],
    ['used', undef, 0, 0],
    ['costUnit', undef, 0, 1],
    ['properties', 'KeyAnyValue', 1, 0],
    ['labels', 'KeyValue', 1, 0],
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
