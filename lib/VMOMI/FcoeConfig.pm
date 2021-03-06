package VMOMI::FcoeConfig;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['priorityClass', undef, 0, 1],
    ['sourceMac', undef, 0, 1],
    ['vlanRange', 'FcoeConfigVlanRange', 1, 1],
    ['capabilities', 'FcoeConfigFcoeCapabilities', 0, 1],
    ['fcoeActive', 'boolean', 0, 1],
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
