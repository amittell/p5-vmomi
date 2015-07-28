package VMOMI::StateAlarmExpression;
use parent 'VMOMI::AlarmExpression';

our @class_members = ( 
    ['operator', 'StateAlarmOperator', 0, 1],
    ['type', undef, 0, 1],
    ['statePath', undef, 0, 1],
    ['yellow', undef, 0, 0],
    ['red', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
