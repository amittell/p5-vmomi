package VMOMI::VirtualMachineFileLayoutExFileInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['type', undef, 0, 1],
    ['size', undef, 0, 1],
    ['uniqueSize', undef, 0, 0],
    ['backingObjectId', undef, 0, 0],
    ['accessible', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
