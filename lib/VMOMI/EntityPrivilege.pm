package VMOMI::EntityPrivilege;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['entity', 'ManagedObjectReference', 0, 1],
    ['privAvailability', 'PrivilegeAvailability', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
