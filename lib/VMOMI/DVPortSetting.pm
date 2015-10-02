package VMOMI::DVPortSetting;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['blocked', 'BoolPolicy', 0, 0],
    ['vmDirectPathGen2Allowed', 'BoolPolicy', 0, 0],
    ['inShapingPolicy', 'DVSTrafficShapingPolicy', 0, 0],
    ['outShapingPolicy', 'DVSTrafficShapingPolicy', 0, 0],
    ['vendorSpecificConfig', 'DVSVendorSpecificConfig', 0, 0],
    ['networkResourcePoolKey', 'StringPolicy', 0, 0],
    ['filterPolicy', 'DvsFilterPolicy', 0, 0],
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
