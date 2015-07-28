package VMOMI::ReplicationVmInProgressFault;
use parent 'VMOMI::ReplicationVmFault';

our @class_members = ( 
    ['requestedActivity', undef, 0, 1],
    ['inProgressActivity', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
