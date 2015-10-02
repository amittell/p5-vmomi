package VMOMI::VirtualMachineSriovInfo;
use parent 'VMOMI::VirtualMachinePciPassthroughInfo';

our @class_ancestors = ( 
    'VirtualMachinePciPassthroughInfo',
    'VirtualMachineTargetInfo',
    'DynamicData',
);

our @class_members = ( 
    ['virtualFunction', 'boolean', 0, 1],
    ['pnic', undef, 0, 0],
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
