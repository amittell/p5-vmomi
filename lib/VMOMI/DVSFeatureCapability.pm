package VMOMI::DVSFeatureCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['networkResourceManagementSupported', 'boolean', 0, 1],
    ['vmDirectPathGen2Supported', 'boolean', 0, 1],
    ['nicTeamingPolicy', undef, 1, 0],
    ['networkResourcePoolHighShareValue', undef, 0, 0],
    ['networkResourceManagementCapability', 'DVSNetworkResourceManagementCapability', 0, 0],
    ['healthCheckCapability', 'DVSHealthCheckCapability', 0, 0],
    ['rollbackCapability', 'DVSRollbackCapability', 0, 0],
    ['backupRestoreCapability', 'DVSBackupRestoreCapability', 0, 0],
    ['networkFilterSupported', 'boolean', 0, 0],
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
