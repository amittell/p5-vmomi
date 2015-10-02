package VMOMI::VMwareDVSConfigInfo;
use parent 'VMOMI::DVSConfigInfo';

our @class_ancestors = ( 
    'DVSConfigInfo',
    'DynamicData',
);

our @class_members = ( 
    ['vspanSession', 'VMwareVspanSession', 1, 0],
    ['pvlanConfig', 'VMwareDVSPvlanMapEntry', 1, 0],
    ['maxMtu', undef, 0, 1],
    ['linkDiscoveryProtocolConfig', 'LinkDiscoveryProtocolConfig', 0, 0],
    ['ipfixConfig', 'VMwareIpfixConfig', 0, 0],
    ['lacpGroupConfig', 'VMwareDvsLacpGroupConfig', 1, 0],
    ['lacpApiVersion', undef, 0, 0],
    ['multicastFilteringMode', undef, 0, 0],
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
