package VMOMI::DVPortgroupConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['configVersion', undef, 0, 0],
    ['name', undef, 0, 0],
    ['numPorts', undef, 0, 0],
    ['portNameFormat', undef, 0, 0],
    ['defaultPortConfig', 'DVPortSetting', 0, 0],
    ['description', undef, 0, 0],
    ['type', undef, 0, 0],
    ['scope', 'ManagedObjectReference', 1, 0],
    ['policy', 'DVPortgroupPolicy', 0, 0],
    ['vendorSpecificConfig', 'DistributedVirtualSwitchKeyedOpaqueBlob', 1, 0],
    ['autoExpand', 'boolean', 0, 0],
    ['vmVnicNetworkResourcePoolKey', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
