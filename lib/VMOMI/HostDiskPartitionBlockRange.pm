package VMOMI::HostDiskPartitionBlockRange;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['partition', undef, 0, 0],
    ['type', undef, 0, 1],
    ['start', 'HostDiskDimensionsLba', 0, 1],
    ['end', 'HostDiskDimensionsLba', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
