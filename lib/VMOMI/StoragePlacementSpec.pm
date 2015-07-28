package VMOMI::StoragePlacementSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['type', undef, 0, 1],
    ['priority', 'VirtualMachineMovePriority', 0, 0],
    ['vm', 'ManagedObjectReference', 0, 0],
    ['podSelectionSpec', 'StorageDrsPodSelectionSpec', 0, 1],
    ['cloneSpec', 'VirtualMachineCloneSpec', 0, 0],
    ['cloneName', undef, 0, 0],
    ['configSpec', 'VirtualMachineConfigSpec', 0, 0],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 0],
    ['resourcePool', 'ManagedObjectReference', 0, 0],
    ['host', 'ManagedObjectReference', 0, 0],
    ['folder', 'ManagedObjectReference', 0, 0],
    ['disallowPrerequisiteMoves', 'boolean', 0, 0],
    ['resourceLeaseDurationSec', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
