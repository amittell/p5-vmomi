package VMOMI::ReadOnlyDisksWithLegacyDestination;
use parent 'VMOMI::MigrationFault';

our @class_members = ( 
    ['roDiskCount', undef, 0, 1],
    ['timeoutDanger', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
