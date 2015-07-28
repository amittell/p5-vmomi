package VMOMI::VirtualEthernetCardNetworkBackingInfo;
use parent 'VMOMI::VirtualDeviceDeviceBackingInfo';

our @class_members = ( 
    ['network', 'ManagedObjectReference', 0, 0],
    ['inPassthroughMode', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
