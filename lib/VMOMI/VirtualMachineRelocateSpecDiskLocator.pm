package VMOMI::VirtualMachineRelocateSpecDiskLocator;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['diskId', undef, 0, 1],
    ['datastore', 'ManagedObjectReference', 0, 1],
    ['diskMoveType', undef, 0, 0],
    ['diskBackingInfo', 'VirtualDeviceBackingInfo', 0, 0],
    ['profile', 'VirtualMachineProfileSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
