package VMOMI::DistributedVirtualSwitchProductSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 0],
    ['vendor', undef, 0, 0],
    ['version', undef, 0, 0],
    ['build', undef, 0, 0],
    ['forwardingClass', undef, 0, 0],
    ['bundleId', undef, 0, 0],
    ['bundleUrl', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
