package VMOMI::VirtualMachineBootOptions;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['bootDelay', undef, 0, 0],
    ['enterBIOSSetup', 'boolean', 0, 0],
    ['bootRetryEnabled', 'boolean', 0, 0],
    ['bootRetryDelay', undef, 0, 0],
    ['bootOrder', 'VirtualMachineBootOptionsBootableDevice', 1, 0],
    ['networkBootProtocol', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
