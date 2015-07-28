package VMOMI::HostDiagnosticPartitionCreateDescription;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['layout', 'HostDiskPartitionLayout', 0, 1],
    ['diskUuid', undef, 0, 1],
    ['spec', 'HostDiagnosticPartitionCreateSpec', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
