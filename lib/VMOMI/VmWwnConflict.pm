package VMOMI::VmWwnConflict;
use parent 'VMOMI::InvalidVmConfig';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 0],
    ['host', 'ManagedObjectReference', 0, 0],
    ['name', undef, 0, 0],
    ['wwn', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
