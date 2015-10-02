package VMOMI::VirtualUSB;
use parent 'VMOMI::VirtualDevice';

our @class_ancestors = ( 
    'VirtualDevice',
    'DynamicData',
);

our @class_members = ( 
    ['connected', 'boolean', 0, 1],
    ['vendor', undef, 0, 0],
    ['product', undef, 0, 0],
    ['family', undef, 1, 0],
    ['speed', undef, 1, 0],
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
