package VMOMI::HostOpaqueNetworkInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['opaqueNetworkId', undef, 0, 1],
    ['opaqueNetworkName', undef, 0, 1],
    ['opaqueNetworkType', undef, 0, 1],
    ['pnicZone', undef, 1, 0],
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
