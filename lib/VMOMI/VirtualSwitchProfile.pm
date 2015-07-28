package VMOMI::VirtualSwitchProfile;
use parent 'VMOMI::ApplyProfile';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['link', 'LinkProfile', 0, 1],
    ['numPorts', 'NumPortsProfile', 0, 1],
    ['networkPolicy', 'NetworkPolicyProfile', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
