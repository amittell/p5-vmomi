package VMOMI::HostNatServiceSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['virtualSwitch', undef, 0, 1],
    ['activeFtp', 'boolean', 0, 1],
    ['allowAnyOui', 'boolean', 0, 1],
    ['configPort', 'boolean', 0, 1],
    ['ipGatewayAddress', undef, 0, 1],
    ['udpTimeout', undef, 0, 1],
    ['portForward', 'HostNatServicePortForwardSpec', 1, 0],
    ['nameService', 'HostNatServiceNameServiceSpec', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
