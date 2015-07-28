package VMOMI::HostInternetScsiHbaSendTarget;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['address', undef, 0, 1],
    ['port', undef, 0, 0],
    ['authenticationProperties', 'HostInternetScsiHbaAuthenticationProperties', 0, 0],
    ['digestProperties', 'HostInternetScsiHbaDigestProperties', 0, 0],
    ['supportedAdvancedOptions', 'OptionDef', 1, 0],
    ['advancedOptions', 'HostInternetScsiHbaParamValue', 1, 0],
    ['parent', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
