package VMOMI::CompositePolicyOption;
use parent 'VMOMI::PolicyOption';

our @class_members = ( 
    ['option', 'PolicyOption', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
