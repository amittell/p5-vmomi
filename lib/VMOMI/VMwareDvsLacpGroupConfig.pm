package VMOMI::VMwareDvsLacpGroupConfig;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 0],
    ['name', undef, 0, 0],
    ['mode', undef, 0, 0],
    ['uplinkNum', undef, 0, 0],
    ['loadbalanceAlgorithm', undef, 0, 0],
    ['vlan', 'VMwareDvsLagVlanConfig', 0, 0],
    ['ipfix', 'VMwareDvsLagIpfixConfig', 0, 0],
    ['uplinkName', undef, 1, 0],
    ['uplinkPortKey', undef, 1, 0],
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
