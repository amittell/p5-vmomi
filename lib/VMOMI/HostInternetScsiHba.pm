package VMOMI::HostInternetScsiHba;
use parent 'VMOMI::HostHostBusAdapter';

our @class_members = ( 
    ['isSoftwareBased', 'boolean', 0, 1],
    ['canBeDisabled', 'boolean', 0, 0],
    ['networkBindingSupport', 'HostInternetScsiHbaNetworkBindingSupportType', 0, 0],
    ['discoveryCapabilities', 'HostInternetScsiHbaDiscoveryCapabilities', 0, 1],
    ['discoveryProperties', 'HostInternetScsiHbaDiscoveryProperties', 0, 1],
    ['authenticationCapabilities', 'HostInternetScsiHbaAuthenticationCapabilities', 0, 1],
    ['authenticationProperties', 'HostInternetScsiHbaAuthenticationProperties', 0, 1],
    ['digestCapabilities', 'HostInternetScsiHbaDigestCapabilities', 0, 0],
    ['digestProperties', 'HostInternetScsiHbaDigestProperties', 0, 0],
    ['ipCapabilities', 'HostInternetScsiHbaIPCapabilities', 0, 1],
    ['ipProperties', 'HostInternetScsiHbaIPProperties', 0, 1],
    ['supportedAdvancedOptions', 'OptionDef', 1, 0],
    ['advancedOptions', 'HostInternetScsiHbaParamValue', 1, 0],
    ['iScsiName', undef, 0, 1],
    ['iScsiAlias', undef, 0, 0],
    ['configuredSendTarget', 'HostInternetScsiHbaSendTarget', 1, 0],
    ['configuredStaticTarget', 'HostInternetScsiHbaStaticTarget', 1, 0],
    ['maxSpeedMb', undef, 0, 0],
    ['currentSpeedMb', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
