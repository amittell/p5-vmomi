package VMOMI::FileBackedVirtualDiskSpec;
use parent 'VMOMI::VirtualDiskSpec';

our @class_ancestors = ( 
    'VirtualDiskSpec',
    'DynamicData',
);

our @class_members = ( 
    ['capacityKb', undef, 0, 1],
    ['profile', 'VirtualMachineProfileSpec', 1, 0],
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
