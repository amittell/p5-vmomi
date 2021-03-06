package VMOMI::DVSCreateSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['configSpec', 'DVSConfigSpec', 0, 1],
    ['productInfo', 'DistributedVirtualSwitchProductSpec', 0, 0],
    ['capability', 'DVSCapability', 0, 0],
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
