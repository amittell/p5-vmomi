package VMOMI::ClusterDasFailoverLevelAdvancedRuntimeInfo;
use parent 'VMOMI::ClusterDasAdvancedRuntimeInfo';

our @class_members = ( 
    ['slotInfo', 'ClusterDasFailoverLevelAdvancedRuntimeInfoSlotInfo', 0, 1],
    ['totalSlots', undef, 0, 1],
    ['usedSlots', undef, 0, 1],
    ['unreservedSlots', undef, 0, 1],
    ['totalVms', undef, 0, 1],
    ['totalHosts', undef, 0, 1],
    ['totalGoodHosts', undef, 0, 1],
    ['hostSlots', 'ClusterDasFailoverLevelAdvancedRuntimeInfoHostSlots', 1, 0],
    ['vmsRequiringMultipleSlots', 'ClusterDasFailoverLevelAdvancedRuntimeInfoVmSlots', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
