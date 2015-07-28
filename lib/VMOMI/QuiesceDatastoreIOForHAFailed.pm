package VMOMI::QuiesceDatastoreIOForHAFailed;
use parent 'VMOMI::ResourceInUse';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['hostName', undef, 0, 1],
    ['ds', 'ManagedObjectReference', 0, 1],
    ['dsName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
