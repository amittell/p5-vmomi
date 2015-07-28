package VMOMI::VmfsDatastoreMultipleExtentOption;
use parent 'VMOMI::VmfsDatastoreBaseOption';

our @class_members = ( 
    ['vmfsExtent', 'HostDiskPartitionBlockRange', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
