package VMOMI::DVPortgroupPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['blockOverrideAllowed', 'boolean', 0, 1],
    ['shapingOverrideAllowed', 'boolean', 0, 1],
    ['vendorConfigOverrideAllowed', 'boolean', 0, 1],
    ['livePortMovingAllowed', 'boolean', 0, 1],
    ['portConfigResetAtDisconnect', 'boolean', 0, 1],
    ['networkResourcePoolOverrideAllowed', 'boolean', 0, 0],
    ['trafficFilterOverrideAllowed', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
