package VMOMI::GuestNicInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['network', undef, 0, 0],
    ['ipAddress', undef, 1, 0],
    ['macAddress', undef, 0, 0],
    ['connected', 'boolean', 0, 1],
    ['deviceConfigId', undef, 0, 1],
    ['dnsConfig', 'NetDnsConfigInfo', 0, 0],
    ['ipConfig', 'NetIpConfigInfo', 0, 0],
    ['netBIOSConfig', 'NetBIOSConfigInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
