package VMOMI::PhysicalNic;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['device', undef, 0, 1],
    ['pci', undef, 0, 1],
    ['driver', undef, 0, 0],
    ['linkSpeed', 'PhysicalNicLinkInfo', 0, 0],
    ['validLinkSpecification', 'PhysicalNicLinkInfo', 1, 0],
    ['spec', 'PhysicalNicSpec', 0, 1],
    ['wakeOnLanSupported', 'boolean', 0, 1],
    ['mac', undef, 0, 1],
    ['fcoeConfiguration', 'FcoeConfig', 0, 0],
    ['vmDirectPathGen2Supported', 'boolean', 0, 0],
    ['vmDirectPathGen2SupportedMode', undef, 0, 0],
    ['resourcePoolSchedulerAllowed', 'boolean', 0, 0],
    ['resourcePoolSchedulerDisallowedReason', undef, 1, 0],
    ['autoNegotiateSupported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
