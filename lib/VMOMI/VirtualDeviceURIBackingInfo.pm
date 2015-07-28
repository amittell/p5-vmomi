package VMOMI::VirtualDeviceURIBackingInfo;
use parent 'VMOMI::VirtualDeviceBackingInfo';

our @class_members = ( 
    ['serviceURI', undef, 0, 1],
    ['direction', undef, 0, 1],
    ['proxyURI', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
