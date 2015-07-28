package VMOMI::HostConnectSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['hostName', undef, 0, 0],
    ['port', undef, 0, 0],
    ['sslThumbprint', undef, 0, 0],
    ['userName', undef, 0, 0],
    ['password', undef, 0, 0],
    ['vmFolder', 'ManagedObjectReference', 0, 0],
    ['force', 'boolean', 0, 1],
    ['vimAccountName', undef, 0, 0],
    ['vimAccountPassword', undef, 0, 0],
    ['managementIp', undef, 0, 0],
    ['lockdownMode', 'HostLockdownMode', 0, 0],
    ['hostGateway', 'HostGatewaySpec', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
