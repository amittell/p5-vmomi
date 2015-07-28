package VMOMI::HostProxySwitch;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['dvsUuid', undef, 0, 1],
    ['dvsName', undef, 0, 1],
    ['key', undef, 0, 1],
    ['numPorts', undef, 0, 1],
    ['configNumPorts', undef, 0, 0],
    ['numPortsAvailable', undef, 0, 1],
    ['uplinkPort', 'KeyValue', 1, 0],
    ['mtu', undef, 0, 0],
    ['pnic', undef, 1, 0],
    ['spec', 'HostProxySwitchSpec', 0, 1],
    ['hostLag', 'HostProxySwitchHostLagConfig', 1, 0],
    ['networkReservationSupported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
