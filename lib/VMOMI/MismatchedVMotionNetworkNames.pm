package VMOMI::MismatchedVMotionNetworkNames;
use parent 'VMOMI::MigrationFault';

our @class_members = ( 
    ['sourceNetwork', undef, 0, 1],
    ['destNetwork', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
