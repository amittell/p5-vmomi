package VMOMI::HostDiagnosticSystem;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['activePartition', 'HostDiagnosticPartition', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;