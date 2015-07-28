package VMOMI::ClusterStatusChangedEvent;
use parent 'VMOMI::ClusterEvent';

our @class_members = ( 
    ['oldStatus', undef, 0, 1],
    ['newStatus', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
