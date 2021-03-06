package VMOMI::HostConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['nasDatastore', 'HostNasVolumeConfig', 1, 0],
    ['network', 'HostNetworkConfig', 0, 0],
    ['nicTypeSelection', 'HostVirtualNicManagerNicTypeSelection', 1, 0],
    ['service', 'HostServiceConfig', 1, 0],
    ['firewall', 'HostFirewallConfig', 0, 0],
    ['option', 'OptionValue', 1, 0],
    ['datastorePrincipal', undef, 0, 0],
    ['datastorePrincipalPasswd', undef, 0, 0],
    ['datetime', 'HostDateTimeConfig', 0, 0],
    ['storageDevice', 'HostStorageDeviceInfo', 0, 0],
    ['license', 'HostLicenseSpec', 0, 0],
    ['security', 'HostSecuritySpec', 0, 0],
    ['userAccount', 'HostAccountSpec', 1, 0],
    ['usergroupAccount', 'HostAccountSpec', 1, 0],
    ['memory', 'HostMemorySpec', 0, 0],
    ['activeDirectory', 'HostActiveDirectory', 1, 0],
    ['genericConfig', 'KeyAnyValue', 1, 0],
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
