package VMOMI::HostVsanInternalSystemVsanPhysicalDiskDiagnosticsResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['diskUuid', undef, 0, 1],
    ['success', 'boolean', 0, 1],
    ['failureReason', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
