package VMOMI::ResourceAllocationInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['reservation', undef, 0, 0],
    ['expandableReservation', 'boolean', 0, 0],
    ['limit', undef, 0, 0],
    ['shares', 'SharesInfo', 0, 0],
    ['overheadLimit', undef, 0, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
