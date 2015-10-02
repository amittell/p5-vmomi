package VMOMI::DatastoreInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['url', undef, 0, 1],
    ['freeSpace', undef, 0, 1],
    ['maxFileSize', undef, 0, 1],
    ['maxVirtualDiskCapacity', undef, 0, 0],
    ['maxMemoryFileSize', undef, 0, 0],
    ['timestamp', undef, 0, 0],
    ['containerId', undef, 0, 0],
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
