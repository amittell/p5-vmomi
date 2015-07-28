package VMOMI::HostDiagnosticPartition;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['storageType', undef, 0, 1],
    ['diagnosticType', undef, 0, 1],
    ['slots', undef, 0, 1],
    ['id', 'HostScsiDiskPartition', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;