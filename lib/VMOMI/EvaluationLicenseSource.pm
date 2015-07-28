package VMOMI::EvaluationLicenseSource;
use parent 'VMOMI::LicenseSource';

our @class_members = ( 
    ['remainingHours', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
