package VMOMI::VirtualMachineFileLayoutSnapshotLayout;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', 'ManagedObjectReference', 0, 1],
    ['snapshotFile', undef, 1, 1],
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
