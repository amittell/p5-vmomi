package VMOMI::VirtualAppSummary;
use parent 'VMOMI::ResourcePoolSummary';

our @class_ancestors = ( 
    'ResourcePoolSummary',
    'DynamicData',
);

our @class_members = ( 
    ['product', 'VAppProductInfo', 0, 0],
    ['vAppState', 'VirtualAppVAppState', 0, 0],
    ['suspended', 'boolean', 0, 0],
    ['installBootRequired', 'boolean', 0, 0],
    ['instanceUuid', undef, 0, 0],
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
