package VMOMI::AlarmTriggeringAction;
use parent 'VMOMI::AlarmAction';

our @class_members = ( 
    ['action', 'Action', 0, 1],
    ['transitionSpecs', 'AlarmTriggeringActionTransitionSpec', 1, 0],
    ['green2yellow', 'boolean', 0, 1],
    ['yellow2red', 'boolean', 0, 1],
    ['red2yellow', 'boolean', 0, 1],
    ['yellow2green', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
