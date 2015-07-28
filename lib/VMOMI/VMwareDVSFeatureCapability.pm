package VMOMI::VMwareDVSFeatureCapability;
use parent 'VMOMI::DVSFeatureCapability';

our @class_members = ( 
    ['vspanSupported', 'boolean', 0, 0],
    ['lldpSupported', 'boolean', 0, 0],
    ['ipfixSupported', 'boolean', 0, 0],
    ['ipfixCapability', 'VMwareDvsIpfixCapability', 0, 0],
    ['multicastSnoopingSupported', 'boolean', 0, 0],
    ['vspanCapability', 'VMwareDVSVspanCapability', 0, 0],
    ['lacpCapability', 'VMwareDvsLacpCapability', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
