package VMOMI::VmRelocatedEvent;
use parent 'VMOMI::VmRelocateSpecEvent';

our @class_members = ( 
    ['sourceHost', 'HostEventArgument', 0, 1],
    ['sourceDatacenter', 'DatacenterEventArgument', 0, 0],
    ['sourceDatastore', 'DatastoreEventArgument', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
