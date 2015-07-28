package VMOMI::NumericRange;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['start', undef, 0, 1],
    ['end', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
