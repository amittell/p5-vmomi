package VMOMI::HostDatastoreSystem;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['capabilities', 'HostDatastoreSystemCapabilities', 0, 1],
    ['datastore', 'ManagedObjectReference', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;