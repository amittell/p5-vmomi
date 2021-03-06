package VMOMI::PowerOnFtSecondaryTimedout;
use parent 'VMOMI::Timedout';

our @class_ancestors = ( 
    'Timedout',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['vmName', undef, 0, 1],
    ['timeout', undef, 0, 1],
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
