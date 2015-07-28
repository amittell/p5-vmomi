package VMOMI::HostNicFailureCriteria;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['checkSpeed', undef, 0, 0],
    ['speed', undef, 0, 0],
    ['checkDuplex', 'boolean', 0, 0],
    ['fullDuplex', 'boolean', 0, 0],
    ['checkErrorPercent', 'boolean', 0, 0],
    ['percentage', undef, 0, 0],
    ['checkBeacon', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
