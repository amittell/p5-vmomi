package VMOMI::PlacementRankResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['candidate', 'ManagedObjectReference', 0, 1],
    ['reservedSpaceMB', undef, 0, 1],
    ['usedSpaceMB', undef, 0, 1],
    ['totalSpaceMB', undef, 0, 1],
    ['utilization', undef, 0, 1],
    ['faults', 'LocalizedMethodFault', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
