package VMOMI::ClusterConfigInfoEx;
use parent 'VMOMI::ComputeResourceConfigInfo';

our @class_members = ( 
    ['dasConfig', 'ClusterDasConfigInfo', 0, 1],
    ['dasVmConfig', 'ClusterDasVmConfigInfo', 1, 0],
    ['drsConfig', 'ClusterDrsConfigInfo', 0, 1],
    ['drsVmConfig', 'ClusterDrsVmConfigInfo', 1, 0],
    ['rule', 'ClusterRuleInfo', 1, 0],
    ['dpmConfigInfo', 'ClusterDpmConfigInfo', 0, 0],
    ['dpmHostConfig', 'ClusterDpmHostConfigInfo', 1, 0],
    ['vsanConfigInfo', 'VsanClusterConfigInfo', 0, 0],
    ['vsanHostConfig', 'VsanHostConfigInfo', 1, 0],
    ['group', 'ClusterGroupInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
