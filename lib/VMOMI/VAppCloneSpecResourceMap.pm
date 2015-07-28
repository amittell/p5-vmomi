package VMOMI::VAppCloneSpecResourceMap;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['source', 'ManagedObjectReference', 0, 1],
    ['parent', 'ManagedObjectReference', 0, 0],
    ['resourceSpec', 'ResourceConfigSpec', 0, 0],
    ['location', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
