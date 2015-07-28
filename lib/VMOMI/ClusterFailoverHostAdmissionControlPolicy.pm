package VMOMI::ClusterFailoverHostAdmissionControlPolicy;
use parent 'VMOMI::ClusterDasAdmissionControlPolicy';

our @class_members = ( 
    ['failoverHosts', 'ManagedObjectReference', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
