package VMOMI::DatastoreCapability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['directoryHierarchySupported', 'boolean', 0, 1],
    ['rawDiskMappingsSupported', 'boolean', 0, 1],
    ['perFileThinProvisioningSupported', 'boolean', 0, 1],
    ['storageIORMSupported', 'boolean', 0, 0],
    ['nativeSnapshotSupported', 'boolean', 0, 0],
    ['topLevelDirectoryCreateSupported', 'boolean', 0, 0],
    ['seSparseSupported', 'boolean', 0, 0],
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
