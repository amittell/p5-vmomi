package VMOMI::DvsMacNetworkRuleQualifier;
use parent 'VMOMI::DvsNetworkRuleQualifier';

our @class_members = ( 
    ['sourceAddress', 'MacAddress', 0, 0],
    ['destinationAddress', 'MacAddress', 0, 0],
    ['protocol', 'IntExpression', 0, 0],
    ['vlanId', 'IntExpression', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
