package VMOMI::VirtualMachineVMCIDeviceFilterSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['rank', undef, 0, 1],
    ['action', undef, 0, 1],
    ['protocol', undef, 0, 1],
    ['direction', undef, 0, 1],
    ['lowerDstPortBoundary', undef, 0, 0],
    ['upperDstPortBoundary', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
