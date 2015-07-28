package VMOMI::GuestStackInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['dnsConfig', 'NetDnsConfigInfo', 0, 0],
    ['ipRouteConfig', 'NetIpRouteConfigInfo', 0, 0],
    ['ipStackConfig', 'KeyValue', 1, 0],
    ['dhcpConfig', 'NetDhcpConfigInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
