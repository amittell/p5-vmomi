package VMOMI::VmMessageWarningEvent;
use parent 'VMOMI::VmEvent';

our @class_members = ( 
    ['message', undef, 0, 1],
    ['messageInfo', 'VirtualMachineMessage', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
