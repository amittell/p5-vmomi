package VMOMI::VirtualMachineConfigOptionDescriptor;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['description', undef, 0, 0],
    ['host', 'ManagedObjectReference', 1, 0],
    ['createSupported', 'boolean', 0, 0],
    ['defaultConfigOption', 'boolean', 0, 0],
    ['runSupported', 'boolean', 0, 0],
    ['upgradeSupported', 'boolean', 0, 0],
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
