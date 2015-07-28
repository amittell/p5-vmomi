package VMOMI::ArrayOfPlacementAffinityRule;
use parent 'VMOMI::ComplexType';

our @class_members = ( 
    ['PlacementAffinityRule', 'PlacementAffinityRule', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
