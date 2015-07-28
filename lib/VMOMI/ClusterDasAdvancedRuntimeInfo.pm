package VMOMI::ClusterDasAdvancedRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['dasHostInfo', 'ClusterDasHostInfo', 0, 0],
    ['vmcpSupported', 'ClusterDasAdvancedRuntimeInfoVmcpCapabilityInfo', 0, 0],
    ['heartbeatDatastoreInfo', 'DasHeartbeatDatastoreInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
