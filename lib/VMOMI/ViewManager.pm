package VMOMI::ViewManager;
use parent 'VMOMI::ManagedObject';

our @class_ancestors = (
    'ManagedObject',
);

our @class_members = (
    ['viewList', 'ManagedObjectReference', 1, 0],
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