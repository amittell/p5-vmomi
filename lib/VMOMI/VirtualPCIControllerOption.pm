package VMOMI::VirtualPCIControllerOption;
use parent 'VMOMI::VirtualControllerOption';

our @class_ancestors = ( 
    'VirtualControllerOption',
    'VirtualDeviceOption',
    'DynamicData',
);

our @class_members = ( 
    ['numSCSIControllers', 'IntOption', 0, 1],
    ['numEthernetCards', 'IntOption', 0, 1],
    ['numVideoCards', 'IntOption', 0, 1],
    ['numSoundCards', 'IntOption', 0, 1],
    ['numVmiRoms', 'IntOption', 0, 1],
    ['numVmciDevices', 'IntOption', 0, 0],
    ['numPCIPassthroughDevices', 'IntOption', 0, 0],
    ['numSasSCSIControllers', 'IntOption', 0, 0],
    ['numVmxnet3EthernetCards', 'IntOption', 0, 0],
    ['numParaVirtualSCSIControllers', 'IntOption', 0, 0],
    ['numSATAControllers', 'IntOption', 0, 0],
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
