package VMOMI::IpRange;
use parent 'VMOMI::IpAddress';

our @class_ancestors = ( 
    'IpAddress',
    'NegatableExpression',
    'DynamicData',
);

our @class_members = ( 
    ['addressPrefix', undef, 0, 1],
    ['prefixLength', undef, 0, 0],
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
