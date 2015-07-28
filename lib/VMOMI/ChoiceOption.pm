package VMOMI::ChoiceOption;
use parent 'VMOMI::OptionType';

our @class_members = ( 
    ['choiceInfo', 'ElementDescription', 1, 1],
    ['defaultIndex', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
