package VMOMI::StorageDrsAutomationConfig;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['spaceLoadBalanceAutomationMode', undef, 0, 0],
    ['ioLoadBalanceAutomationMode', undef, 0, 0],
    ['ruleEnforcementAutomationMode', undef, 0, 0],
    ['policyEnforcementAutomationMode', undef, 0, 0],
    ['vmEvacuationAutomationMode', undef, 0, 0],
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
