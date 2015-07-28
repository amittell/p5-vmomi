package VMOMI::HostFibreChannelOverEthernetHbaLinkInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vnportMac', undef, 0, 1],
    ['fcfMac', undef, 0, 1],
    ['vlanId', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
