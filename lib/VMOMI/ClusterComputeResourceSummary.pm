package VMOMI::ClusterComputeResourceSummary;
use parent 'VMOMI::ComputeResourceSummary';

our @class_ancestors = ( 
    'ComputeResourceSummary',
    'DynamicData',
);

our @class_members = ( 
    ['currentFailoverLevel', undef, 0, 1],
    ['admissionControlInfo', 'ClusterDasAdmissionControlInfo', 0, 0],
    ['numVmotions', undef, 0, 1],
    ['targetBalance', undef, 0, 0],
    ['currentBalance', undef, 0, 0],
    ['usageSummary', 'ClusterUsageSummary', 0, 0],
    ['currentEVCModeKey', undef, 0, 0],
    ['dasData', 'ClusterDasData', 0, 0],
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
