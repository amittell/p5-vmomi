package VMOMI::AlarmDescription;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['expr', 'TypeDescription', 1, 1],
    ['stateOperator', 'ElementDescription', 1, 1],
    ['metricOperator', 'ElementDescription', 1, 1],
    ['hostSystemConnectionState', 'ElementDescription', 1, 1],
    ['virtualMachinePowerState', 'ElementDescription', 1, 1],
    ['datastoreConnectionState', 'ElementDescription', 1, 0],
    ['hostSystemPowerState', 'ElementDescription', 1, 0],
    ['virtualMachineGuestHeartbeatStatus', 'ElementDescription', 1, 0],
    ['entityStatus', 'ElementDescription', 1, 1],
    ['action', 'TypeDescription', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
