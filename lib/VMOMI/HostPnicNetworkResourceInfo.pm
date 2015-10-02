package VMOMI::HostPnicNetworkResourceInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['pnicDevice', undef, 0, 1],
    ['availableBandwidthForVMTraffic', undef, 0, 0],
    ['unusedBandwidthForVMTraffic', undef, 0, 0],
    ['placedVirtualNics', 'HostPlacedVirtualNicIdentifier', 1, 0],
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
