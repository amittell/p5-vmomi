package VMOMI::ClusterConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['dasConfig', 'ClusterDasConfigInfo', 0, 0],
    ['dasVmConfigSpec', 'ClusterDasVmConfigSpec', 1, 0],
    ['drsConfig', 'ClusterDrsConfigInfo', 0, 0],
    ['drsVmConfigSpec', 'ClusterDrsVmConfigSpec', 1, 0],
    ['rulesSpec', 'ClusterRuleSpec', 1, 0],
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
