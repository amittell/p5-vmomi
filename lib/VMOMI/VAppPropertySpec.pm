package VMOMI::VAppPropertySpec;
use parent 'VMOMI::ArrayUpdateSpec';

our @class_ancestors = ( 
    'ArrayUpdateSpec',
    'DynamicData',
);

our @class_members = ( 
    ['info', 'VAppPropertyInfo', 0, 0],
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
