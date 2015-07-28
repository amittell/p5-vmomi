package VMOMI::VirtualMachineScsiPassthroughInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_members = ( 
    ['scsiClass', undef, 0, 1],
    ['vendor', undef, 0, 1],
    ['physicalUnitNumber', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
