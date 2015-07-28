package VMOMI::ClusterDasVmSettings;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['restartPriority', undef, 0, 0],
    ['isolationResponse', undef, 0, 0],
    ['vmToolsMonitoringSettings', 'ClusterVmToolsMonitoringSettings', 0, 0],
    ['vmComponentProtectionSettings', 'ClusterVmComponentProtectionSettings', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
