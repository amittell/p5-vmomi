package VMOMI::ClusterEVCManagerEVCState;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['supportedEVCMode', 'EVCMode', 1, 1],
    ['currentEVCModeKey', undef, 0, 0],
    ['guaranteedCPUFeatures', 'HostCpuIdInfo', 1, 0],
    ['featureCapability', 'HostFeatureCapability', 1, 0],
    ['featureMask', 'HostFeatureMask', 1, 0],
    ['featureRequirement', 'VirtualMachineFeatureRequirement', 1, 0],
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
