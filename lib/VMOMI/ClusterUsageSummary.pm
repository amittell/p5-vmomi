package VMOMI::ClusterUsageSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['totalCpuCapacityMhz', undef, 0, 1],
    ['totalMemCapacityMB', undef, 0, 1],
    ['cpuReservationMhz', undef, 0, 1],
    ['memReservationMB', undef, 0, 1],
    ['poweredOffCpuReservationMhz', undef, 0, 0],
    ['poweredOffMemReservationMB', undef, 0, 0],
    ['cpuDemandMhz', undef, 0, 1],
    ['memDemandMB', undef, 0, 1],
    ['statsGenNumber', undef, 0, 1],
    ['cpuEntitledMhz', undef, 0, 1],
    ['memEntitledMB', undef, 0, 1],
    ['poweredOffVmCount', undef, 0, 1],
    ['totalVmCount', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
