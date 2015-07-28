package VMOMI::ClusterVmHostRuleInfo;
use parent 'VMOMI::ClusterRuleInfo';

our @class_members = ( 
    ['vmGroupName', undef, 0, 0],
    ['affineHostGroupName', undef, 0, 0],
    ['antiAffineHostGroupName', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
