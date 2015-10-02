package VMOMI::ObjectUpdate;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['kind', 'ObjectUpdateKind', 0, 1],
    ['obj', 'ManagedObjectReference', 0, 1],
    ['changeSet', 'PropertyChange', 1, 0],
    ['missingSet', 'MissingProperty', 1, 0],
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
