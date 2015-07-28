package VMOMI::DvsTrafficRule;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['description', undef, 0, 0],
    ['sequence', undef, 0, 0],
    ['qualifier', 'DvsNetworkRuleQualifier', 1, 0],
    ['action', 'DvsNetworkRuleAction', 0, 0],
    ['direction', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
