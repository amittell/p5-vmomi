package VMOMI::DVPortState;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['runtimeInfo', 'DVPortStatus', 0, 0],
    ['stats', 'DistributedVirtualSwitchPortStatistics', 0, 1],
    ['vendorSpecificState', 'DistributedVirtualSwitchKeyedOpaqueBlob', 1, 0],
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
