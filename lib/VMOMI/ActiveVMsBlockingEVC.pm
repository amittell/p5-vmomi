package VMOMI::ActiveVMsBlockingEVC;
use parent 'VMOMI::EVCConfigFault';

our @class_ancestors = ( 
    'EVCConfigFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['evcMode', undef, 0, 0],
    ['host', 'ManagedObjectReference', 1, 0],
    ['hostName', undef, 1, 0],
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
