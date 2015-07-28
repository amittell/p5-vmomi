package VMOMI::HostApplyProfile;
use parent 'VMOMI::ApplyProfile';

our @class_members = ( 
    ['memory', 'HostMemoryProfile', 0, 0],
    ['storage', 'StorageProfile', 0, 0],
    ['network', 'NetworkProfile', 0, 0],
    ['datetime', 'DateTimeProfile', 0, 0],
    ['firewall', 'FirewallProfile', 0, 0],
    ['security', 'SecurityProfile', 0, 0],
    ['service', 'ServiceProfile', 1, 0],
    ['option', 'OptionProfile', 1, 0],
    ['userAccount', 'UserProfile', 1, 0],
    ['usergroupAccount', 'UserGroupProfile', 1, 0],
    ['authentication', 'AuthenticationProfile', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
