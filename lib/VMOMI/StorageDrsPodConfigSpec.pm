package VMOMI::StorageDrsPodConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['ioLoadBalanceEnabled', 'boolean', 0, 0],
    ['defaultVmBehavior', undef, 0, 0],
    ['loadBalanceInterval', undef, 0, 0],
    ['defaultIntraVmAffinity', 'boolean', 0, 0],
    ['spaceLoadBalanceConfig', 'StorageDrsSpaceLoadBalanceConfig', 0, 0],
    ['ioLoadBalanceConfig', 'StorageDrsIoLoadBalanceConfig', 0, 0],
    ['automationOverrides', 'StorageDrsAutomationConfig', 0, 0],
    ['rule', 'ClusterRuleSpec', 1, 0],
    ['option', 'StorageDrsOptionSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
