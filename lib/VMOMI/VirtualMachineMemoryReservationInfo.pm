package VMOMI::VirtualMachineMemoryReservationInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['virtualMachineMin', undef, 0, 1],
    ['virtualMachineMax', undef, 0, 1],
    ['virtualMachineReserved', undef, 0, 1],
    ['allocationPolicy', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
