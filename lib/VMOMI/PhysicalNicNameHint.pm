package VMOMI::PhysicalNicNameHint;
use parent 'VMOMI::PhysicalNicHint';

our @class_ancestors = ( 
    'PhysicalNicHint',
    'DynamicData',
);

our @class_members = ( 
    ['network', undef, 0, 1],
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
