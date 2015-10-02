package VMOMI::DvsIpNetworkRuleQualifier;
use parent 'VMOMI::DvsNetworkRuleQualifier';

our @class_ancestors = ( 
    'DvsNetworkRuleQualifier',
    'DynamicData',
);

our @class_members = ( 
    ['sourceAddress', 'IpAddress', 0, 0],
    ['destinationAddress', 'IpAddress', 0, 0],
    ['protocol', 'IntExpression', 0, 0],
    ['sourceIpPort', 'DvsIpPort', 0, 0],
    ['destinationIpPort', 'DvsIpPort', 0, 0],
    ['tcpFlags', 'IntExpression', 0, 0],
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
