package VMOMI::AnswerFileStatusError;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['userInputPath', 'ProfilePropertyPath', 0, 1],
    ['errMsg', 'LocalizableMessage', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;