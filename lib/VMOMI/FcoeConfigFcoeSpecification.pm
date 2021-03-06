package VMOMI::FcoeConfigFcoeSpecification;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['underlyingPnic', undef, 0, 1],
    ['priorityClass', undef, 0, 0],
    ['sourceMac', undef, 0, 0],
    ['vlanRange', 'FcoeConfigVlanRange', 1, 0],
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
