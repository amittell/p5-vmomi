package VMOMI::OvfInternalError;
use parent 'VMOMI::OvfSystemFault';

our @class_ancestors = ( 
    'OvfSystemFault',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
