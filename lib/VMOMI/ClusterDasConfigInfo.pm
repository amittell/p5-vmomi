package VMOMI::ClusterDasConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['vmMonitoring', undef, 0, 0],
    ['hostMonitoring', undef, 0, 0],
    ['vmComponentProtecting', undef, 0, 0],
    ['failoverLevel', undef, 0, 0],
    ['admissionControlPolicy', 'ClusterDasAdmissionControlPolicy', 0, 0],
    ['admissionControlEnabled', 'boolean', 0, 0],
    ['defaultVmSettings', 'ClusterDasVmSettings', 0, 0],
    ['option', 'OptionValue', 1, 0],
    ['heartbeatDatastore', 'ManagedObjectReference', 1, 0],
    ['hBDatastoreCandidatePolicy', undef, 0, 0],
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
