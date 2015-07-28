package VMOMI::HostPortGroup;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['port', 'HostPortGroupPort', 1, 0],
    ['vswitch', undef, 0, 0],
    ['computedPolicy', 'HostNetworkPolicy', 0, 1],
    ['spec', 'HostPortGroupSpec', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
