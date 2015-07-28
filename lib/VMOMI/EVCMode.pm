package VMOMI::EVCMode;
use parent 'VMOMI::ElementDescription';

our @class_members = ( 
    ['guaranteedCPUFeatures', 'HostCpuIdInfo', 1, 0],
    ['featureCapability', 'HostFeatureCapability', 1, 0],
    ['featureMask', 'HostFeatureMask', 1, 0],
    ['featureRequirement', 'VirtualMachineFeatureRequirement', 1, 0],
    ['vendor', undef, 0, 1],
    ['track', undef, 1, 0],
    ['vendorTier', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
