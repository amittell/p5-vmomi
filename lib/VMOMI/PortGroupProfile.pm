package VMOMI::PortGroupProfile;
use parent 'VMOMI::ApplyProfile';

our @class_ancestors = ( 
    'ApplyProfile',
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['vlan', 'VlanProfile', 0, 1],
    ['vswitch', 'VirtualSwitchSelectionProfile', 0, 1],
    ['networkPolicy', 'NetworkPolicyProfile', 0, 1],
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
