package VMOMI::DvsUpdateTagNetworkRuleAction;
use parent 'VMOMI::DvsNetworkRuleAction';

our @class_members = ( 
    ['qosTag', undef, 0, 0],
    ['dscpTag', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
