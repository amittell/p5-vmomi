package VMOMI::VirtualMachinePciPassthroughInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_members = ( 
    ['pciDevice', 'HostPciDevice', 0, 1],
    ['systemId', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
