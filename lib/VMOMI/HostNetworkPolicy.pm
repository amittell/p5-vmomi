package VMOMI::HostNetworkPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['security', 'HostNetworkSecurityPolicy', 0, 0],
    ['nicTeaming', 'HostNicTeamingPolicy', 0, 0],
    ['offloadPolicy', 'HostNetOffloadCapabilities', 0, 0],
    ['shapingPolicy', 'HostNetworkTrafficShapingPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
