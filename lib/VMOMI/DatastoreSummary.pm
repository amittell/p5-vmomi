package VMOMI::DatastoreSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['datastore', 'ManagedObjectReference', 0, 0],
    ['name', undef, 0, 1],
    ['url', undef, 0, 1],
    ['capacity', undef, 0, 1],
    ['freeSpace', undef, 0, 1],
    ['uncommitted', undef, 0, 0],
    ['accessible', 'boolean', 0, 1],
    ['multipleHostAccess', 'boolean', 0, 0],
    ['type', undef, 0, 1],
    ['maintenanceMode', undef, 0, 0],
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
