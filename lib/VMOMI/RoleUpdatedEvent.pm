package VMOMI::RoleUpdatedEvent;
use parent 'VMOMI::RoleEvent';

our @class_ancestors = ( 
    'RoleEvent',
    'AuthorizationEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['privilegeList', undef, 1, 0],
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
