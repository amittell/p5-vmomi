package VMOMI::HostDiskMappingInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['physicalPartition', 'HostDiskMappingPartitionInfo', 0, 0],
    ['name', undef, 0, 1],
    ['exclusive', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;