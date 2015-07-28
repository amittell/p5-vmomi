package VMOMI::HostIpConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['dhcp', 'boolean', 0, 1],
    ['ipAddress', undef, 0, 0],
    ['subnetMask', undef, 0, 0],
    ['ipV6Config', 'HostIpConfigIpV6AddressConfiguration', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
