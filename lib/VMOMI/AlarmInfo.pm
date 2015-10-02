package VMOMI::AlarmInfo;
use parent 'VMOMI::AlarmSpec';

our @class_ancestors = ( 
    'AlarmSpec',
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['alarm', 'ManagedObjectReference', 0, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
    ['lastModifiedTime', undef, 0, 1],
    ['lastModifiedUser', undef, 0, 1],
    ['creationEventId', undef, 0, 1],
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
