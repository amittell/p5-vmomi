package VMOMI::VirtualMachineRelocateSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['service', 'ServiceLocator', 0, 0],
    ['folder', 'ManagedObjectReference', 0, 0],
    ['datastore', 'ManagedObjectReference', 0, 0],
    ['diskMoveType', undef, 0, 0],
    ['pool', 'ManagedObjectReference', 0, 0],
    ['host', 'ManagedObjectReference', 0, 0],
    ['disk', 'VirtualMachineRelocateSpecDiskLocator', 1, 0],
    ['transform', 'VirtualMachineRelocateTransformation', 0, 0],
    ['deviceChange', 'VirtualDeviceConfigSpec', 1, 0],
    ['profile', 'VirtualMachineProfileSpec', 1, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
