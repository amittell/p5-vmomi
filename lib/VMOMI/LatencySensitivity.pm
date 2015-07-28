package VMOMI::LatencySensitivity;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['level', 'LatencySensitivitySensitivityLevel', 0, 1],
    ['sensitivity', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
