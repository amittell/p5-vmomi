package VMOMI::DVSConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['configVersion', undef, 0, 0],
    ['name', undef, 0, 0],
    ['numStandalonePorts', undef, 0, 0],
    ['maxPorts', undef, 0, 0],
    ['uplinkPortPolicy', 'DVSUplinkPortPolicy', 0, 0],
    ['uplinkPortgroup', 'ManagedObjectReference', 1, 0],
    ['defaultPortConfig', 'DVPortSetting', 0, 0],
    ['host', 'DistributedVirtualSwitchHostMemberConfigSpec', 1, 0],
    ['extensionKey', undef, 0, 0],
    ['description', undef, 0, 0],
    ['policy', 'DVSPolicy', 0, 0],
    ['vendorSpecificConfig', 'DistributedVirtualSwitchKeyedOpaqueBlob', 1, 0],
    ['contact', 'DVSContactInfo', 0, 0],
    ['switchIpAddress', undef, 0, 0],
    ['defaultProxySwitchMaxNumPorts', undef, 0, 0],
    ['infrastructureTrafficResourceConfig', 'DvsHostInfrastructureTrafficResource', 1, 0],
    ['networkResourceControlVersion', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
