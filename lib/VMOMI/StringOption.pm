package VMOMI::StringOption;
use parent 'VMOMI::OptionType';

our @class_members = ( 
    ['defaultValue', undef, 0, 1],
    ['validCharacters', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
