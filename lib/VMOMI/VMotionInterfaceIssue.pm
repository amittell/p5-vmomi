package VMOMI::VMotionInterfaceIssue;
use parent 'VMOMI::MigrationFault';

our @class_members = ( 
    ['atSourceHost', 'boolean', 0, 1],
    ['failedHost', undef, 0, 1],
    ['failedHostEntity', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
