package VMOMI::NetDhcpConfigSpecDhcpOptionsSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enable', 'boolean', 0, 0],
    ['config', 'KeyValue', 1, 1],
    ['operation', undef, 0, 1],
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
