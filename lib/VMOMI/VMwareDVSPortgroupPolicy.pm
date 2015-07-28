package VMOMI::VMwareDVSPortgroupPolicy;
use parent 'VMOMI::DVPortgroupPolicy';

our @class_members = ( 
    ['vlanOverrideAllowed', 'boolean', 0, 1],
    ['uplinkTeamingOverrideAllowed', 'boolean', 0, 1],
    ['securityPolicyOverrideAllowed', 'boolean', 0, 1],
    ['ipfixOverrideAllowed', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
