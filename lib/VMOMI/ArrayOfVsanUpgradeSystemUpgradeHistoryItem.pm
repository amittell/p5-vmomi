package VMOMI::ArrayOfVsanUpgradeSystemUpgradeHistoryItem;
use parent 'VMOMI::ComplexType';

our @class_members = ( 
    ['VsanUpgradeSystemUpgradeHistoryItem', 'VsanUpgradeSystemUpgradeHistoryItem', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;