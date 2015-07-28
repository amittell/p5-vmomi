package VMOMI::VirtualSriovEthernetCardSriovBackingInfo;
use parent 'VMOMI::VirtualDeviceBackingInfo';

our @class_members = ( 
    ['physicalFunctionBacking', 'VirtualPCIPassthroughDeviceBackingInfo', 0, 0],
    ['virtualFunctionBacking', 'VirtualPCIPassthroughDeviceBackingInfo', 0, 0],
    ['virtualFunctionIndex', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
