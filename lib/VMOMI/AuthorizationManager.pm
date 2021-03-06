package VMOMI::AuthorizationManager;
use parent 'VMOMI::ManagedObject';

our @class_ancestors = (
    'ManagedObject',
);

our @class_members = (
    ['description', 'AuthorizationDescription', 0, 1],
    ['privilegeList', 'AuthorizationPrivilege', 1, 0],
    ['roleList', 'AuthorizationRole', 1, 0],
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