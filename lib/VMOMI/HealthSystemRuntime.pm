package VMOMI::HealthSystemRuntime;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['systemHealthInfo', 'HostSystemHealthInfo', 0, 0],
    ['hardwareStatusInfo', 'HostHardwareStatusInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;