package VMOMI::ApplyProfile;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['enabled', 'boolean', 0, 1],
    ['policy', 'ProfilePolicy', 1, 0],
    ['profileTypeName', undef, 0, 0],
    ['profileVersion', undef, 0, 0],
    ['property', 'ProfileApplyProfileProperty', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
