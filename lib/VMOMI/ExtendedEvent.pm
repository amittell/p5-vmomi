package VMOMI::ExtendedEvent;
use parent 'VMOMI::GeneralEvent';

our @class_ancestors = ( 
    'GeneralEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['eventTypeId', undef, 0, 1],
    ['managedObject', 'ManagedObjectReference', 0, 1],
    ['data', 'ExtendedEventPair', 1, 0],
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
