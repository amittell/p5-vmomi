package VMOMI::VsanUpgradeSystemUpgradeHistoryDiskGroupOp;
use parent 'VMOMI::VsanUpgradeSystemUpgradeHistoryItem';

our @class_members = ( 
    ['operation', undef, 0, 1],
    ['diskMapping', 'VsanHostDiskMapping', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
