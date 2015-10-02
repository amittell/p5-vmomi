package VMOMI::FailToLockFaultToleranceVMs;
use parent 'VMOMI::RuntimeFault';

our @class_ancestors = ( 
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['vmName', undef, 0, 1],
    ['vm', 'ManagedObjectReference', 0, 1],
    ['alreadyLockedVm', 'ManagedObjectReference', 0, 1],
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
