package VMOMI::DistributedVirtualSwitchHostMemberConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 0],
    ['maxProxySwitchPorts', undef, 0, 1],
    ['vendorSpecificConfig', 'DistributedVirtualSwitchKeyedOpaqueBlob', 1, 0],
    ['backing', 'DistributedVirtualSwitchHostMemberBacking', 0, 1],
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
