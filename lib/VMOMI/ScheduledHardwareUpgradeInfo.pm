package VMOMI::ScheduledHardwareUpgradeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['upgradePolicy', undef, 0, 0],
    ['versionKey', undef, 0, 0],
    ['scheduledHardwareUpgradeStatus', undef, 0, 0],
    ['fault', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
