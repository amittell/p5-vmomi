package VMOMI::OvfHostValueNotParsed;
use parent 'VMOMI::OvfSystemFault';

our @class_ancestors = ( 
    'OvfSystemFault',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['property', undef, 0, 1],
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
