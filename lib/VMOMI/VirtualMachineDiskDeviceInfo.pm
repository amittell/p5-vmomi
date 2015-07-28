package VMOMI::VirtualMachineDiskDeviceInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_members = ( 
    ['capacity', undef, 0, 0],
    ['vm', 'ManagedObjectReference', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;