package VMOMI::DistributedVirtualSwitchHostMember;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['runtimeState', 'DistributedVirtualSwitchHostMemberRuntimeState', 0, 0],
    ['config', 'DistributedVirtualSwitchHostMemberConfigInfo', 0, 1],
    ['productInfo', 'DistributedVirtualSwitchProductSpec', 0, 0],
    ['uplinkPortKey', undef, 1, 0],
    ['status', undef, 0, 1],
    ['statusDetail', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
