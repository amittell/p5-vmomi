package VMOMI::VmwareDistributedVirtualSwitchTrunkVlanSpec;
use parent 'VMOMI::VmwareDistributedVirtualSwitchVlanSpec';

our @class_ancestors = ( 
    'VmwareDistributedVirtualSwitchVlanSpec',
    'InheritablePolicy',
    'DynamicData',
);

our @class_members = ( 
    ['vlanId', 'NumericRange', 1, 1],
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
