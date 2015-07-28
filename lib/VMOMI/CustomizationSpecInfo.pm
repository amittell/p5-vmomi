package VMOMI::CustomizationSpecInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['description', undef, 0, 1],
    ['type', undef, 0, 1],
    ['changeVersion', undef, 0, 0],
    ['lastUpdateTime', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
