package VMOMI::PropertyFilterUpdate;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['filter', 'ManagedObjectReference', 0, 1],
    ['objectSet', 'ObjectUpdate', 1, 0],
    ['missingSet', 'MissingObject', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
