package VMOMI::VirtualMachineConfigSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['template', 'boolean', 0, 1],
    ['vmPathName', undef, 0, 1],
    ['memorySizeMB', undef, 0, 0],
    ['cpuReservation', undef, 0, 0],
    ['memoryReservation', undef, 0, 0],
    ['numCpu', undef, 0, 0],
    ['numEthernetCards', undef, 0, 0],
    ['numVirtualDisks', undef, 0, 0],
    ['uuid', undef, 0, 0],
    ['instanceUuid', undef, 0, 0],
    ['guestId', undef, 0, 0],
    ['guestFullName', undef, 0, 0],
    ['annotation', undef, 0, 0],
    ['product', 'VAppProductInfo', 0, 0],
    ['installBootRequired', 'boolean', 0, 0],
    ['ftInfo', 'FaultToleranceConfigInfo', 0, 0],
    ['managedBy', 'ManagedByInfo', 0, 0],
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
