package VMOMI::VirtualEthernetCardDistributedVirtualPortBackingInfo;
use parent 'VMOMI::VirtualDeviceBackingInfo';

our @class_members = ( 
    ['port', 'DistributedVirtualSwitchPortConnection', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
