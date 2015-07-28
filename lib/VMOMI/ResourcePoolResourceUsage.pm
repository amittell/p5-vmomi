package VMOMI::ResourcePoolResourceUsage;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['reservationUsed', undef, 0, 1],
    ['reservationUsedForVm', undef, 0, 1],
    ['unreservedForPool', undef, 0, 1],
    ['unreservedForVm', undef, 0, 1],
    ['overallUsage', undef, 0, 1],
    ['maxUsage', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
