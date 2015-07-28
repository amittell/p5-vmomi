package VMOMI::HostInternetScsiHbaTargetSet;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['staticTargets', 'HostInternetScsiHbaStaticTarget', 1, 0],
    ['sendTargets', 'HostInternetScsiHbaSendTarget', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
