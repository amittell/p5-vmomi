package VMOMI::ClusterDrsRecommendation;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['rating', undef, 0, 1],
    ['reason', undef, 0, 1],
    ['reasonText', undef, 0, 1],
    ['migrationList', 'ClusterDrsMigration', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;