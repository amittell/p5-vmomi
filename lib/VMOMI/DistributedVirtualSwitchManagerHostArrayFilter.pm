package VMOMI::DistributedVirtualSwitchManagerHostArrayFilter;
use parent 'VMOMI::DistributedVirtualSwitchManagerHostDvsFilterSpec';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
