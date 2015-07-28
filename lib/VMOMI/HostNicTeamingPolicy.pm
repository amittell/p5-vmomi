package VMOMI::HostNicTeamingPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['policy', undef, 0, 0],
    ['reversePolicy', 'boolean', 0, 0],
    ['notifySwitches', 'boolean', 0, 0],
    ['rollingOrder', 'boolean', 0, 0],
    ['failureCriteria', 'HostNicFailureCriteria', 0, 0],
    ['nicOrder', 'HostNicOrderPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
