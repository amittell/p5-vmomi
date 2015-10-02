package VMOMI::NoPermission;
use parent 'VMOMI::SecurityError';

our @class_ancestors = ( 
    'SecurityError',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['object', 'ManagedObjectReference', 0, 1],
    ['privilegeId', undef, 0, 1],
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
