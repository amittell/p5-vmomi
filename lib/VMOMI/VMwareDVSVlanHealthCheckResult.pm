package VMOMI::VMwareDVSVlanHealthCheckResult;
use parent 'VMOMI::HostMemberUplinkHealthCheckResult';

our @class_members = ( 
    ['trunkedVlan', 'NumericRange', 1, 0],
    ['untrunkedVlan', 'NumericRange', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
