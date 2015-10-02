package VMOMI::CustomFieldDef;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['type', undef, 0, 1],
    ['managedObjectType', undef, 0, 0],
    ['fieldDefPrivileges', 'PrivilegePolicyDef', 0, 0],
    ['fieldInstancePrivileges', 'PrivilegePolicyDef', 0, 0],
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
