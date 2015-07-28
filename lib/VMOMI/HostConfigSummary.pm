package VMOMI::HostConfigSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['port', undef, 0, 1],
    ['sslThumbprint', undef, 0, 0],
    ['product', 'AboutInfo', 0, 0],
    ['vmotionEnabled', 'boolean', 0, 1],
    ['faultToleranceEnabled', 'boolean', 0, 0],
    ['featureVersion', 'HostFeatureVersionInfo', 1, 0],
    ['agentVmDatastore', 'ManagedObjectReference', 0, 0],
    ['agentVmNetwork', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
