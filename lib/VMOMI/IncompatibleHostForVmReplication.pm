package VMOMI::IncompatibleHostForVmReplication;
use parent 'VMOMI::ReplicationFault';

our @class_members = ( 
    ['vmName', undef, 0, 1],
    ['hostName', undef, 0, 1],
    ['reason', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;