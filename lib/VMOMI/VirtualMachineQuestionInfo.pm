package VMOMI::VirtualMachineQuestionInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['text', undef, 0, 1],
    ['choice', 'ChoiceOption', 0, 1],
    ['message', 'VirtualMachineMessage', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
