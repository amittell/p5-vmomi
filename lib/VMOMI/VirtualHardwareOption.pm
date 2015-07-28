package VMOMI::VirtualHardwareOption;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['hwVersion', undef, 0, 1],
    ['virtualDeviceOption', 'VirtualDeviceOption', 1, 1],
    ['deviceListReadonly', 'boolean', 0, 1],
    ['numCPU', undef, 1, 1],
    ['numCoresPerSocket', 'IntOption', 0, 0],
    ['numCpuReadonly', 'boolean', 0, 1],
    ['memoryMB', 'LongOption', 0, 1],
    ['numPCIControllers', 'IntOption', 0, 1],
    ['numIDEControllers', 'IntOption', 0, 1],
    ['numUSBControllers', 'IntOption', 0, 1],
    ['numUSBXHCIControllers', 'IntOption', 0, 0],
    ['numSIOControllers', 'IntOption', 0, 1],
    ['numPS2Controllers', 'IntOption', 0, 1],
    ['licensingLimit', undef, 1, 0],
    ['numSupportedWwnPorts', 'IntOption', 0, 0],
    ['numSupportedWwnNodes', 'IntOption', 0, 0],
    ['resourceConfigOption', 'ResourceConfigOption', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
