package VMOMI::ClusterDasDataSummary;
use parent 'VMOMI::ClusterDasData';

our @class_members = ( 
    ['hostListVersion', undef, 0, 1],
    ['clusterConfigVersion', undef, 0, 1],
    ['compatListVersion', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
