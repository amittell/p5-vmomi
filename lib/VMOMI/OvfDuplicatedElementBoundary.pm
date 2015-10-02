package VMOMI::OvfDuplicatedElementBoundary;
use parent 'VMOMI::OvfElement';

our @class_ancestors = ( 
    'OvfElement',
    'OvfInvalidPackage',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['boundary', undef, 0, 1],
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
