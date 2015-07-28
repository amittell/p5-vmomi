package VMOMI::ClusterConfigSpecEx;
use parent 'VMOMI::ComputeResourceConfigSpec';

our @class_members = ( 
    ['dasConfig', 'ClusterDasConfigInfo', 0, 0],
    ['dasVmConfigSpec', 'ClusterDasVmConfigSpec', 1, 0],
    ['drsConfig', 'ClusterDrsConfigInfo', 0, 0],
    ['drsVmConfigSpec', 'ClusterDrsVmConfigSpec', 1, 0],
    ['rulesSpec', 'ClusterRuleSpec', 1, 0],
    ['dpmConfig', 'ClusterDpmConfigInfo', 0, 0],
    ['dpmHostConfigSpec', 'ClusterDpmHostConfigSpec', 1, 0],
    ['vsanConfig', 'VsanClusterConfigInfo', 0, 0],
    ['vsanHostConfigSpec', 'VsanHostConfigInfo', 1, 0],
    ['groupSpec', 'ClusterGroupSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
