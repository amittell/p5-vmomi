package VMOMI::HostDhcpServiceSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['virtualSwitch', undef, 0, 1],
    ['defaultLeaseDuration', undef, 0, 1],
    ['leaseBeginIp', undef, 0, 1],
    ['leaseEndIp', undef, 0, 1],
    ['maxLeaseDuration', undef, 0, 1],
    ['unlimitedLease', 'boolean', 0, 1],
    ['ipSubnetAddr', undef, 0, 1],
    ['ipSubnetMask', undef, 0, 1],
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
