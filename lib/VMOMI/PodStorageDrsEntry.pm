package VMOMI::PodStorageDrsEntry;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['storageDrsConfig', 'StorageDrsConfigInfo', 0, 1],
    ['recommendation', 'ClusterRecommendation', 1, 0],
    ['drsFault', 'ClusterDrsFaults', 1, 0],
    ['actionHistory', 'ClusterActionHistory', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
