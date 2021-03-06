package VMOMI::MethodNotFound;
use parent 'VMOMI::InvalidRequest';

our @class_ancestors = ( 
    'InvalidRequest',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['receiver', 'ManagedObjectReference', 0, 1],
    ['method', undef, 0, 1],
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
