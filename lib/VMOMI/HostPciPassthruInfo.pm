package VMOMI::HostPciPassthruInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', undef, 0, 1],
    ['dependentDevice', undef, 0, 1],
    ['passthruEnabled', 'boolean', 0, 1],
    ['passthruCapable', 'boolean', 0, 1],
    ['passthruActive', 'boolean', 0, 1],
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
