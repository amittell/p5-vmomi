package VMOMI::VsanHostDiskResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['disk', 'HostScsiDisk', 0, 1],
    ['state', undef, 0, 1],
    ['vsanUuid', undef, 0, 0],
    ['error', 'LocalizedMethodFault', 0, 0],
    ['degraded', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;