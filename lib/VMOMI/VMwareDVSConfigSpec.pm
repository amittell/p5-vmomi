package VMOMI::VMwareDVSConfigSpec;
use parent 'VMOMI::DVSConfigSpec';

our @class_ancestors = ( 
    'DVSConfigSpec',
    'DynamicData',
);

our @class_members = ( 
    ['pvlanConfigSpec', 'VMwareDVSPvlanConfigSpec', 1, 0],
    ['vspanConfigSpec', 'VMwareDVSVspanConfigSpec', 1, 0],
    ['maxMtu', undef, 0, 0],
    ['linkDiscoveryProtocolConfig', 'LinkDiscoveryProtocolConfig', 0, 0],
    ['ipfixConfig', 'VMwareIpfixConfig', 0, 0],
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
