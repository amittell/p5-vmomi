package VMOMI::VmBeingRelocatedEvent;
use parent 'VMOMI::VmRelocateSpecEvent';

our @class_members = ( 
    ['destHost', 'HostEventArgument', 0, 1],
    ['destDatacenter', 'DatacenterEventArgument', 0, 0],
    ['destDatastore', 'DatastoreEventArgument', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
