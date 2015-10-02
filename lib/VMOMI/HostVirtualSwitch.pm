package VMOMI::HostVirtualSwitch;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['key', undef, 0, 1],
    ['numPorts', undef, 0, 1],
    ['numPortsAvailable', undef, 0, 1],
    ['mtu', undef, 0, 0],
    ['portgroup', undef, 1, 0],
    ['pnic', undef, 1, 0],
    ['spec', 'HostVirtualSwitchSpec', 0, 1],
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
