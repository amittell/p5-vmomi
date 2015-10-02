package VMOMI::Permission;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['entity', 'ManagedObjectReference', 0, 0],
    ['principal', undef, 0, 1],
    ['group', 'boolean', 0, 1],
    ['roleId', undef, 0, 1],
    ['propagate', 'boolean', 0, 1],
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
