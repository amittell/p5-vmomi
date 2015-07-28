package VMOMI::VirtualMachineSnapshotTree;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['snapshot', 'ManagedObjectReference', 0, 1],
    ['vm', 'ManagedObjectReference', 0, 1],
    ['name', undef, 0, 1],
    ['description', undef, 0, 1],
    ['id', undef, 0, 0],
    ['createTime', undef, 0, 1],
    ['state', 'VirtualMachinePowerState', 0, 1],
    ['quiesced', 'boolean', 0, 1],
    ['backupManifest', undef, 0, 0],
    ['childSnapshotList', 'VirtualMachineSnapshotTree', 1, 0],
    ['replaySupported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
