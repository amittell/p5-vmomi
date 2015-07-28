package VMOMI::EVCAdmissionFailedCPUVendor;
use parent 'VMOMI::EVCAdmissionFailed';

our @class_members = ( 
    ['clusterCPUVendor', undef, 0, 1],
    ['hostCPUVendor', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;