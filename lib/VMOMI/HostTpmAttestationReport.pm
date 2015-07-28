package VMOMI::HostTpmAttestationReport;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['tpmPcrValues', 'HostTpmDigestInfo', 1, 1],
    ['tpmEvents', 'HostTpmEventLogEntry', 1, 1],
    ['tpmLogReliable', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
