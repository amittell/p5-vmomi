package VMOMI::VmfsDatastoreExtendSpec;
use parent 'VMOMI::VmfsDatastoreSpec';

our @class_members = ( 
    ['partition', 'HostDiskPartitionSpec', 0, 1],
    ['extent', 'HostScsiDiskPartition', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;