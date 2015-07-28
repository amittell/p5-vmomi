package VMOMI::DistributedVirtualSwitchHostMemberPnicSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['pnicDevice', undef, 0, 1],
    ['uplinkPortKey', undef, 0, 0],
    ['uplinkPortgroupKey', undef, 0, 0],
    ['connectionCookie', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
