package VMOMI::VmFaultToleranceTooManyVMsOnHost;
use parent 'VMOMI::InsufficientResourcesFault';

our @class_members = ( 
    ['hostName', undef, 0, 0],
    ['maxNumFtVms', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
