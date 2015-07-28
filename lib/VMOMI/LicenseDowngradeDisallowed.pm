package VMOMI::LicenseDowngradeDisallowed;
use parent 'VMOMI::NotEnoughLicenses';

our @class_members = ( 
    ['edition', undef, 0, 1],
    ['entityId', undef, 0, 1],
    ['features', 'KeyAnyValue', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
