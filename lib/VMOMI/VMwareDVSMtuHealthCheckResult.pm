package VMOMI::VMwareDVSMtuHealthCheckResult;
use parent 'VMOMI::HostMemberUplinkHealthCheckResult';

our @class_ancestors = ( 
    'HostMemberUplinkHealthCheckResult',
    'HostMemberHealthCheckResult',
    'DynamicData',
);

our @class_members = ( 
    ['mtuMismatch', 'boolean', 0, 1],
    ['vlanSupportSwitchMtu', 'NumericRange', 1, 0],
    ['vlanNotSupportSwitchMtu', 'NumericRange', 1, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
