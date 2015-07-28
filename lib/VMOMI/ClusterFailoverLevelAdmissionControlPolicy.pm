package VMOMI::ClusterFailoverLevelAdmissionControlPolicy;
use parent 'VMOMI::ClusterDasAdmissionControlPolicy';

our @class_members = ( 
    ['failoverLevel', undef, 0, 1],
    ['slotPolicy', 'ClusterSlotPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
