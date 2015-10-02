package VMOMI::VAppProductInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['classId', undef, 0, 0],
    ['instanceId', undef, 0, 0],
    ['name', undef, 0, 0],
    ['vendor', undef, 0, 0],
    ['version', undef, 0, 0],
    ['fullVersion', undef, 0, 0],
    ['vendorUrl', undef, 0, 0],
    ['productUrl', undef, 0, 0],
    ['appUrl', undef, 0, 0],
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
