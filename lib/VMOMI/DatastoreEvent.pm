package VMOMI::DatastoreEvent;
use parent 'VMOMI::Event';

our @class_members = ( 
    ['datastore', 'DatastoreEventArgument', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
