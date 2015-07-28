package VMOMI::VmAlreadyExistsInDatacenter;
use parent 'VMOMI::InvalidFolder';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['hostname', undef, 0, 1],
    ['vm', 'ManagedObjectReference', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
