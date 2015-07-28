package VMOMI::VirtualMachineFlagInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['disableAcceleration', 'boolean', 0, 0],
    ['enableLogging', 'boolean', 0, 0],
    ['useToe', 'boolean', 0, 0],
    ['runWithDebugInfo', 'boolean', 0, 0],
    ['monitorType', undef, 0, 0],
    ['htSharing', undef, 0, 0],
    ['snapshotDisabled', 'boolean', 0, 0],
    ['snapshotLocked', 'boolean', 0, 0],
    ['diskUuidEnabled', 'boolean', 0, 0],
    ['virtualMmuUsage', undef, 0, 0],
    ['virtualExecUsage', undef, 0, 0],
    ['snapshotPowerOffBehavior', undef, 0, 0],
    ['recordReplayEnabled', 'boolean', 0, 0],
    ['faultToleranceType', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
