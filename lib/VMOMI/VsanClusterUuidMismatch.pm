package VMOMI::VsanClusterUuidMismatch;
use parent 'VMOMI::CannotMoveVsanEnabledHost';

our @class_members = ( 
    ['hostClusterUuid', undef, 0, 1],
    ['destinationClusterUuid', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
