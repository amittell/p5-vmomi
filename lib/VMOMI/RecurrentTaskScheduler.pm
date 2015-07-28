package VMOMI::RecurrentTaskScheduler;
use parent 'VMOMI::TaskScheduler';

our @class_members = ( 
    ['interval', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
