package VMOMI::TraversalSpec;
use parent 'VMOMI::SelectionSpec';

our @class_members = ( 
    ['type', undef, 0, 1],
    ['path', undef, 0, 1],
    ['skip', 'boolean', 0, 0],
    ['selectSet', 'SelectionSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
