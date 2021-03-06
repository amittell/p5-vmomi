package VMOMI::VirtualMachineCreateChildSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['location', 'VirtualMachineRelocateSpec', 0, 0],
    ['persistent', 'boolean', 0, 1],
    ['configParams', 'OptionValue', 1, 0],
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
