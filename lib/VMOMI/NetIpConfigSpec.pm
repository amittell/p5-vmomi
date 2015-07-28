package VMOMI::NetIpConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ipAddress', 'NetIpConfigSpecIpAddressSpec', 1, 0],
    ['dhcp', 'NetDhcpConfigSpec', 0, 0],
    ['autoConfigurationEnabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
