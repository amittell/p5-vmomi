package VMOMI::VirtualMachineMetadataManagerVmMetadataResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vmMetadata', 'VirtualMachineMetadataManagerVmMetadata', 0, 1],
    ['error', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;