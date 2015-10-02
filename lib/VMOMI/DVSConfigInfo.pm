package VMOMI::DVSConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['uuid', undef, 0, 1],
    ['name', undef, 0, 1],
    ['numStandalonePorts', undef, 0, 1],
    ['numPorts', undef, 0, 1],
    ['maxPorts', undef, 0, 1],
    ['uplinkPortPolicy', 'DVSUplinkPortPolicy', 0, 1],
    ['uplinkPortgroup', 'ManagedObjectReference', 1, 0],
    ['defaultPortConfig', 'DVPortSetting', 0, 1],
    ['host', 'DistributedVirtualSwitchHostMember', 1, 0],
    ['productInfo', 'DistributedVirtualSwitchProductSpec', 0, 1],
    ['targetInfo', 'DistributedVirtualSwitchProductSpec', 0, 0],
    ['extensionKey', undef, 0, 0],
    ['vendorSpecificConfig', 'DistributedVirtualSwitchKeyedOpaqueBlob', 1, 0],
    ['policy', 'DVSPolicy', 0, 0],
    ['description', undef, 0, 0],
    ['configVersion', undef, 0, 1],
    ['contact', 'DVSContactInfo', 0, 1],
    ['switchIpAddress', undef, 0, 0],
    ['createTime', undef, 0, 1],
    ['networkResourceManagementEnabled', 'boolean', 0, 0],
    ['defaultProxySwitchMaxNumPorts', undef, 0, 0],
    ['healthCheckConfig', 'DVSHealthCheckConfig', 1, 0],
    ['infrastructureTrafficResourceConfig', 'DvsHostInfrastructureTrafficResource', 1, 0],
    ['networkResourceControlVersion', undef, 0, 0],
    ['vmVnicNetworkResourcePool', 'DVSVmVnicNetworkResourcePool', 1, 0],
    ['pnicCapacityRatioForReservation', undef, 0, 0],
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
