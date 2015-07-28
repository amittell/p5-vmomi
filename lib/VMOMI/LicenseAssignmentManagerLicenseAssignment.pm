package VMOMI::LicenseAssignmentManagerLicenseAssignment;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['entityId', undef, 0, 1],
    ['scope', undef, 0, 0],
    ['entityDisplayName', undef, 0, 0],
    ['assignedLicense', 'LicenseManagerLicenseInfo', 0, 1],
    ['properties', 'KeyAnyValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
