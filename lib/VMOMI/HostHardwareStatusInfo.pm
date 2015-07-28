package VMOMI::HostHardwareStatusInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['memoryStatusInfo', 'HostHardwareElementInfo', 1, 0],
    ['cpuStatusInfo', 'HostHardwareElementInfo', 1, 0],
    ['storageStatusInfo', 'HostStorageElementInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
