package VMOMI::OvfUnsupportedDeviceBackingOption;
use parent 'VMOMI::OvfSystemFault';

our @class_members = ( 
    ['elementName', undef, 0, 0],
    ['instanceId', undef, 0, 0],
    ['deviceName', undef, 0, 1],
    ['backingName', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
