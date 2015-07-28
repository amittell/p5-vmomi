package VMOMI::HostSnmpSystemAgentLimits;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['maxReadOnlyCommunities', undef, 0, 1],
    ['maxTrapDestinations', undef, 0, 1],
    ['maxCommunityLength', undef, 0, 1],
    ['maxBufferSize', undef, 0, 1],
    ['capability', 'HostSnmpAgentCapability', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;