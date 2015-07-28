package VMOMI::PlacementSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['priority', 'VirtualMachineMovePriority', 0, 0],
    ['vm', 'ManagedObjectReference', 0, 0],
    ['configSpec', 'VirtualMachineConfigSpec', 0, 0],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 0],
    ['hosts', 'ManagedObjectReference', 1, 0],
    ['datastores', 'ManagedObjectReference', 1, 0],
    ['storagePods', 'ManagedObjectReference', 1, 0],
    ['disallowPrerequisiteMoves', 'boolean', 0, 0],
    ['rules', 'ClusterRuleInfo', 1, 0],
    ['key', undef, 0, 0],
    ['placementType', undef, 0, 0],
    ['cloneSpec', 'VirtualMachineCloneSpec', 0, 0],
    ['cloneName', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
