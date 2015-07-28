package VMOMI::VsanUpgradeSystemUpgradeHistoryPreflightFail;
use parent 'VMOMI::VsanUpgradeSystemUpgradeHistoryItem';

our @class_members = ( 
    ['preflightResult', 'VsanUpgradeSystemPreflightCheckResult', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
