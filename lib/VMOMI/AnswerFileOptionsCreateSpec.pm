package VMOMI::AnswerFileOptionsCreateSpec;
use parent 'VMOMI::AnswerFileCreateSpec';

our @class_members = ( 
    ['userInput', 'ProfileDeferredPolicyOptionParameter', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
