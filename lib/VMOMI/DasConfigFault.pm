package VMOMI::DasConfigFault;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['reason', undef, 0, 0],
    ['output', undef, 0, 0],
    ['event', 'Event', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
