package VMOMI::ClusterConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['dasConfig', 'ClusterDasConfigInfo', 0, 1],
    ['dasVmConfig', 'ClusterDasVmConfigInfo', 1, 0],
    ['drsConfig', 'ClusterDrsConfigInfo', 0, 1],
    ['drsVmConfig', 'ClusterDrsVmConfigInfo', 1, 0],
    ['rule', 'ClusterRuleInfo', 1, 0],
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
