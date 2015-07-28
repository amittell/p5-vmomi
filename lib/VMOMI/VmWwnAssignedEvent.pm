package VMOMI::VmWwnAssignedEvent;
use parent 'VMOMI::VmEvent';

our @class_members = ( 
    ['nodeWwns', undef, 1, 1],
    ['portWwns', undef, 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
