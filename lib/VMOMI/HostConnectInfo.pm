package VMOMI::HostConnectInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['serverIp', undef, 0, 0],
    ['inDasCluster', 'boolean', 0, 0],
    ['host', 'HostListSummary', 0, 1],
    ['vm', 'VirtualMachineSummary', 1, 0],
    ['vimAccountNameRequired', 'boolean', 0, 0],
    ['clusterSupported', 'boolean', 0, 0],
    ['network', 'HostConnectInfoNetworkInfo', 1, 0],
    ['datastore', 'HostDatastoreConnectInfo', 1, 0],
    ['license', 'HostLicenseConnectInfo', 0, 0],
    ['capability', 'HostCapability', 0, 0],
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
