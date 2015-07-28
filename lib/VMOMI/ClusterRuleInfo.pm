package VMOMI::ClusterRuleInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['status', 'ManagedEntityStatus', 0, 0],
    ['enabled', 'boolean', 0, 0],
    ['name', undef, 0, 0],
    ['mandatory', 'boolean', 0, 0],
    ['userCreated', 'boolean', 0, 0],
    ['inCompliance', 'boolean', 0, 0],
    ['ruleUuid', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
