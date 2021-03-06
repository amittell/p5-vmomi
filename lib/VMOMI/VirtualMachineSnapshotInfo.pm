package VMOMI::VirtualMachineSnapshotInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['currentSnapshot', 'ManagedObjectReference', 0, 0],
    ['rootSnapshotList', 'VirtualMachineSnapshotTree', 1, 1],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
