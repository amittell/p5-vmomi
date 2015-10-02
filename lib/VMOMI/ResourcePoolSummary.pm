package VMOMI::ResourcePoolSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['config', 'ResourceConfigSpec', 0, 1],
    ['runtime', 'ResourcePoolRuntimeInfo', 0, 1],
    ['quickStats', 'ResourcePoolQuickStats', 0, 0],
    ['configuredMemoryMB', undef, 0, 0],
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
