package VMOMI::HostListSummaryQuickStats;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['overallCpuUsage', undef, 0, 0],
    ['overallMemoryUsage', undef, 0, 0],
    ['distributedCpuFairness', undef, 0, 0],
    ['distributedMemoryFairness', undef, 0, 0],
    ['uptime', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;