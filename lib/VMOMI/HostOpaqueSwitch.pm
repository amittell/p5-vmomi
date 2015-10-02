package VMOMI::HostOpaqueSwitch;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 0],
    ['pnic', undef, 1, 0],
    ['pnicZone', 'HostOpaqueSwitchPhysicalNicZone', 1, 0],
    ['status', undef, 0, 0],
    ['vtep', 'HostVirtualNic', 1, 0],
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
