package VMOMI::VirtualMachineDefaultPowerOpInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['powerOffType', undef, 0, 0],
    ['suspendType', undef, 0, 0],
    ['resetType', undef, 0, 0],
    ['defaultPowerOffType', undef, 0, 0],
    ['defaultSuspendType', undef, 0, 0],
    ['defaultResetType', undef, 0, 0],
    ['standbyAction', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
