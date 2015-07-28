package VMOMI::ProfileSimpleExpression;
use parent 'VMOMI::ProfileExpression';

our @class_members = ( 
    ['expressionType', undef, 0, 1],
    ['parameter', 'KeyAnyValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
