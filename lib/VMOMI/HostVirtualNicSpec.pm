package VMOMI::HostVirtualNicSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ip', 'HostIpConfig', 0, 0],
    ['mac', undef, 0, 0],
    ['distributedVirtualPort', 'DistributedVirtualSwitchPortConnection', 0, 0],
    ['portgroup', undef, 0, 0],
    ['mtu', undef, 0, 0],
    ['tsoEnabled', 'boolean', 0, 0],
    ['netStackInstanceKey', undef, 0, 0],
    ['opaqueNetwork', 'HostVirtualNicOpaqueNetworkSpec', 0, 0],
    ['externalId', undef, 0, 0],
    ['pinnedPnic', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
