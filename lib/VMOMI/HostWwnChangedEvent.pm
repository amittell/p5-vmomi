package VMOMI::HostWwnChangedEvent;
use parent 'VMOMI::HostEvent';

our @class_members = ( 
    ['oldNodeWwns', undef, 1, 0],
    ['oldPortWwns', undef, 1, 0],
    ['newNodeWwns', undef, 1, 0],
    ['newPortWwns', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
