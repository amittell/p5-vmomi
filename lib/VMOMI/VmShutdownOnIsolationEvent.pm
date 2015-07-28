package VMOMI::VmShutdownOnIsolationEvent;
use parent 'VMOMI::VmPoweredOffEvent';

our @class_members = ( 
    ['isolatedHost', 'HostEventArgument', 0, 1],
    ['shutdownResult', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
