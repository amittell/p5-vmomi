package VMOMI::PlacementRankSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['specs', 'PlacementSpec', 1, 1],
    ['clusters', 'ManagedObjectReference', 1, 1],
    ['rules', 'PlacementAffinityRule', 1, 0],
    ['placementRankByVm', 'StorageDrsPlacementRankVmSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
