package VMOMI::HostCacheConfigurationSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['datastore', 'ManagedObjectReference', 0, 1],
    ['swapSize', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;