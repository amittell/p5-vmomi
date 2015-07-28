package VMOMI::ClusterHostPowerAction;
use parent 'VMOMI::ClusterAction';

our @class_members = ( 
    ['operationType', 'HostPowerOperationType', 0, 1],
    ['powerConsumptionWatt', undef, 0, 0],
    ['cpuCapacityMHz', undef, 0, 0],
    ['memCapacityMB', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
