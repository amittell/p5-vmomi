package VMOMI::HostDiskPartitionAttributes;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['partition', undef, 0, 1],
    ['startSector', undef, 0, 1],
    ['endSector', undef, 0, 1],
    ['type', undef, 0, 1],
    ['guid', undef, 0, 0],
    ['logical', 'boolean', 0, 1],
    ['attributes', undef, 0, 1],
    ['partitionAlignment', undef, 0, 0],
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
