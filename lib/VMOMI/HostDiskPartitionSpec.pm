package VMOMI::HostDiskPartitionSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['partitionFormat', undef, 0, 0],
    ['chs', 'HostDiskDimensionsChs', 0, 0],
    ['totalSectors', undef, 0, 0],
    ['partition', 'HostDiskPartitionAttributes', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
