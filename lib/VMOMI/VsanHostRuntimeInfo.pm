package VMOMI::VsanHostRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['membershipList', 'VsanHostMembershipInfo', 1, 0],
    ['diskIssues', 'VsanHostRuntimeInfoDiskIssue', 1, 0],
    ['accessGenNo', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
