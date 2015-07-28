package VMOMI::DistributedVirtualSwitchPortCriteria;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['connected', 'boolean', 0, 0],
    ['active', 'boolean', 0, 0],
    ['uplinkPort', 'boolean', 0, 0],
    ['scope', 'ManagedObjectReference', 0, 0],
    ['portgroupKey', undef, 1, 0],
    ['inside', 'boolean', 0, 0],
    ['portKey', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
