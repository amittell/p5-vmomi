package VMOMI::VAppPropertyFault;
use parent 'VMOMI::VmConfigFault';

our @class_ancestors = ( 
    'VmConfigFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['id', undef, 0, 1],
    ['category', undef, 0, 1],
    ['label', undef, 0, 1],
    ['type', undef, 0, 1],
    ['value', undef, 0, 1],
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
