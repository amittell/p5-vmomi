package VMOMI::BoolOption;
use parent 'VMOMI::OptionType';

our @class_members = ( 
    ['supported', 'boolean', 0, 1],
    ['defaultValue', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
