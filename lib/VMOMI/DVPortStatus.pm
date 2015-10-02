package VMOMI::DVPortStatus;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['linkUp', 'boolean', 0, 1],
    ['blocked', 'boolean', 0, 1],
    ['vlanIds', 'NumericRange', 1, 0],
    ['trunkingMode', 'boolean', 0, 0],
    ['mtu', undef, 0, 0],
    ['linkPeer', undef, 0, 0],
    ['macAddress', undef, 0, 0],
    ['statusDetail', undef, 0, 0],
    ['vmDirectPathGen2Active', 'boolean', 0, 0],
    ['vmDirectPathGen2InactiveReasonNetwork', undef, 1, 0],
    ['vmDirectPathGen2InactiveReasonOther', undef, 1, 0],
    ['vmDirectPathGen2InactiveReasonExtended', undef, 0, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
