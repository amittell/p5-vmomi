package VMOMI::GroupAlarmAction;
use parent 'VMOMI::AlarmAction';

our @class_members = ( 
    ['action', 'AlarmAction', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
