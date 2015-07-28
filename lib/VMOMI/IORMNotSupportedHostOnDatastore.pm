package VMOMI::IORMNotSupportedHostOnDatastore;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['datastore', 'ManagedObjectReference', 0, 1],
    ['datastoreName', undef, 0, 1],
    ['host', 'ManagedObjectReference', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;