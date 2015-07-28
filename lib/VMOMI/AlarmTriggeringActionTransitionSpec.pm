package VMOMI::AlarmTriggeringActionTransitionSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['startState', 'ManagedEntityStatus', 0, 1],
    ['finalState', 'ManagedEntityStatus', 0, 1],
    ['repeats', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;