package VMOMI::VsanUpgradeSystemUpgradeStatus;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['inProgress', 'boolean', 0, 1],
    ['history', 'VsanUpgradeSystemUpgradeHistoryItem', 1, 0],
    ['aborted', 'boolean', 0, 0],
    ['completed', 'boolean', 0, 0],
    ['progress', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;