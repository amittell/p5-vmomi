package VMOMI::NetStackInstanceProfile;
use parent 'VMOMI::ApplyProfile';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['dnsConfig', 'NetworkProfileDnsConfigProfile', 0, 1],
    ['ipRouteConfig', 'IpRouteProfile', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
