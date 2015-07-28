package VMOMI::DistributedVirtualSwitchManagerHostDvsMembershipFilter;
use parent 'VMOMI::DistributedVirtualSwitchManagerHostDvsFilterSpec';

our @class_members = ( 
    ['distributedVirtualSwitch', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
