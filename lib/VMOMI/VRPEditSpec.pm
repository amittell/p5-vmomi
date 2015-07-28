package VMOMI::VRPEditSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vrpId', undef, 0, 1],
    ['description', undef, 0, 0],
    ['cpuAllocation', 'VrpResourceAllocationInfo', 0, 0],
    ['memoryAllocation', 'VrpResourceAllocationInfo', 0, 0],
    ['addedHubs', 'ManagedObjectReference', 1, 0],
    ['removedHubs', 'ManagedObjectReference', 1, 0],
    ['changeVersion', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
