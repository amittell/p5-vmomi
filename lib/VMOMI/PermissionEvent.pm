package VMOMI::PermissionEvent;
use parent 'VMOMI::AuthorizationEvent';

our @class_ancestors = ( 
    'AuthorizationEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['entity', 'ManagedEntityEventArgument', 0, 1],
    ['principal', undef, 0, 1],
    ['group', 'boolean', 0, 1],
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
