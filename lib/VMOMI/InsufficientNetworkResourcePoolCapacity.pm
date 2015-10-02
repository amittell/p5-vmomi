package VMOMI::InsufficientNetworkResourcePoolCapacity;
use parent 'VMOMI::InsufficientResourcesFault';

our @class_ancestors = ( 
    'InsufficientResourcesFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['dvsName', undef, 0, 1],
    ['dvsUuid', undef, 0, 1],
    ['resourcePoolKey', undef, 0, 1],
    ['available', undef, 0, 1],
    ['requested', undef, 0, 1],
    ['device', undef, 1, 1],
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
