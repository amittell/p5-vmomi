package VMOMI::DisallowedChangeByService;
use parent 'VMOMI::RuntimeFault';

our @class_ancestors = ( 
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['serviceName', undef, 0, 1],
    ['disallowedChange', undef, 0, 0],
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
