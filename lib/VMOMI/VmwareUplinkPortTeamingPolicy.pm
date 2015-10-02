package VMOMI::VmwareUplinkPortTeamingPolicy;
use parent 'VMOMI::InheritablePolicy';

our @class_ancestors = ( 
    'InheritablePolicy',
    'DynamicData',
);

our @class_members = ( 
    ['policy', 'StringPolicy', 0, 0],
    ['reversePolicy', 'BoolPolicy', 0, 0],
    ['notifySwitches', 'BoolPolicy', 0, 0],
    ['rollingOrder', 'BoolPolicy', 0, 0],
    ['failureCriteria', 'DVSFailureCriteria', 0, 0],
    ['uplinkPortOrder', 'VMwareUplinkPortOrderPolicy', 0, 0],
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
