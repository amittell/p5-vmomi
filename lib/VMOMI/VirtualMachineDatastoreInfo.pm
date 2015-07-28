package VMOMI::VirtualMachineDatastoreInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_members = ( 
    ['datastore', 'DatastoreSummary', 0, 1],
    ['capability', 'DatastoreCapability', 0, 1],
    ['maxFileSize', undef, 0, 1],
    ['maxVirtualDiskCapacity', undef, 0, 0],
    ['maxPhysicalRDMFileSize', undef, 0, 0],
    ['maxVirtualRDMFileSize', undef, 0, 0],
    ['mode', undef, 0, 1],
    ['vStorageSupport', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
