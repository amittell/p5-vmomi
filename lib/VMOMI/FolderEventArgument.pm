package VMOMI::FolderEventArgument;
use parent 'VMOMI::EntityEventArgument';

our @class_members = ( 
    ['folder', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
