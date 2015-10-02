package VMOMI::NotSupportedDeviceForFT;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_ancestors = ( 
    'VmFaultToleranceIssue',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['hostName', undef, 0, 0],
    ['vm', 'ManagedObjectReference', 0, 1],
    ['vmName', undef, 0, 0],
    ['deviceType', undef, 0, 1],
    ['deviceLabel', undef, 0, 0],
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
