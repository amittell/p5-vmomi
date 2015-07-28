package VMOMI::ExtSolutionManagerInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['tab', 'ExtSolutionManagerInfoTabInfo', 1, 0],
    ['smallIconUrl', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
