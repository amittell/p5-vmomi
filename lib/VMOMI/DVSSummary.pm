package VMOMI::DVSSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['uuid', undef, 0, 1],
    ['numPorts', undef, 0, 1],
    ['productInfo', 'DistributedVirtualSwitchProductSpec', 0, 0],
    ['hostMember', 'ManagedObjectReference', 1, 0],
    ['vm', 'ManagedObjectReference', 1, 0],
    ['host', 'ManagedObjectReference', 1, 0],
    ['portgroupName', undef, 1, 0],
    ['description', undef, 0, 0],
    ['contact', 'DVSContactInfo', 0, 0],
    ['numHosts', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
