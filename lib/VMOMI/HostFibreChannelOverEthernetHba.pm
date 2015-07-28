package VMOMI::HostFibreChannelOverEthernetHba;
use parent 'VMOMI::HostFibreChannelHba';

our @class_members = ( 
    ['underlyingNic', undef, 0, 1],
    ['linkInfo', 'HostFibreChannelOverEthernetHbaLinkInfo', 0, 1],
    ['isSoftwareFcoe', 'boolean', 0, 1],
    ['markedForRemoval', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
