package VMOMI::ClusterRecommendation;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['type', undef, 0, 1],
    ['time', undef, 0, 1],
    ['rating', undef, 0, 1],
    ['reason', undef, 0, 1],
    ['reasonText', undef, 0, 1],
    ['warningText', undef, 0, 0],
    ['warningDetails', 'LocalizableMessage', 0, 0],
    ['prerequisite', undef, 1, 0],
    ['action', 'ClusterAction', 1, 0],
    ['target', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
