package VMOMI::VirtualMachineCloneSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['location', 'VirtualMachineRelocateSpec', 0, 1],
    ['template', 'boolean', 0, 1],
    ['config', 'VirtualMachineConfigSpec', 0, 0],
    ['customization', 'CustomizationSpec', 0, 0],
    ['powerOn', 'boolean', 0, 1],
    ['snapshot', 'ManagedObjectReference', 0, 0],
    ['memory', 'boolean', 0, 0],
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
