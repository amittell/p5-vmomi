package VMOMI::DatastoreEventArgument;
use parent 'VMOMI::EntityEventArgument';

our @class_ancestors = ( 
    'EntityEventArgument',
    'EventArgument',
    'DynamicData',
);

our @class_members = ( 
    ['datastore', 'ManagedObjectReference', 0, 1],
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
