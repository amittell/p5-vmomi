package VMOMI::HostInternetScsiHbaDiscoveryCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['iSnsDiscoverySettable', 'boolean', 0, 1],
    ['slpDiscoverySettable', 'boolean', 0, 1],
    ['staticTargetDiscoverySettable', 'boolean', 0, 1],
    ['sendTargetsDiscoverySettable', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
