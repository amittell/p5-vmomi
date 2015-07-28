package VMOMI::HostLowLevelProvisioningManagerVmRecoveryInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['version', undef, 0, 1],
    ['biosUUID', undef, 0, 1],
    ['instanceUUID', undef, 0, 1],
    ['ftInfo', 'FaultToleranceConfigInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;