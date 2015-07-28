package VMOMI::ClusterResourceUsageSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['cpuUsedMHz', undef, 0, 1],
    ['cpuCapacityMHz', undef, 0, 1],
    ['memUsedMB', undef, 0, 1],
    ['memCapacityMB', undef, 0, 1],
    ['storageUsedMB', undef, 0, 1],
    ['storageCapacityMB', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
