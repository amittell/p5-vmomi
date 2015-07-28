package VMOMI::DistributedVirtualSwitchPortConnectee;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['connectedEntity', 'ManagedObjectReference', 0, 0],
    ['nicKey', undef, 0, 0],
    ['type', undef, 0, 0],
    ['addressHint', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
