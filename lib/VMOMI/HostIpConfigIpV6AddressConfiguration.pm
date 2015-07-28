package VMOMI::HostIpConfigIpV6AddressConfiguration;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ipV6Address', 'HostIpConfigIpV6Address', 1, 0],
    ['autoConfigurationEnabled', 'boolean', 0, 0],
    ['dhcpV6Enabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
