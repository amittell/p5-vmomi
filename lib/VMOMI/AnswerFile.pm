package VMOMI::AnswerFile;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['userInput', 'ProfileDeferredPolicyOptionParameter', 1, 0],
    ['createdTime', undef, 0, 1],
    ['modifiedTime', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
