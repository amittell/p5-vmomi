package VMOMI::VAppPropertyInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['classId', undef, 0, 0],
    ['instanceId', undef, 0, 0],
    ['id', undef, 0, 0],
    ['category', undef, 0, 0],
    ['label', undef, 0, 0],
    ['type', undef, 0, 0],
    ['typeReference', undef, 0, 0],
    ['userConfigurable', 'boolean', 0, 0],
    ['defaultValue', undef, 0, 0],
    ['value', undef, 0, 0],
    ['description', undef, 0, 0],
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
