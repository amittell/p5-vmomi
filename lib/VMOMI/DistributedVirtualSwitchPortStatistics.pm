package VMOMI::DistributedVirtualSwitchPortStatistics;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['packetsInMulticast', undef, 0, 1],
    ['packetsOutMulticast', undef, 0, 1],
    ['bytesInMulticast', undef, 0, 1],
    ['bytesOutMulticast', undef, 0, 1],
    ['packetsInUnicast', undef, 0, 1],
    ['packetsOutUnicast', undef, 0, 1],
    ['bytesInUnicast', undef, 0, 1],
    ['bytesOutUnicast', undef, 0, 1],
    ['packetsInBroadcast', undef, 0, 1],
    ['packetsOutBroadcast', undef, 0, 1],
    ['bytesInBroadcast', undef, 0, 1],
    ['bytesOutBroadcast', undef, 0, 1],
    ['packetsInDropped', undef, 0, 1],
    ['packetsOutDropped', undef, 0, 1],
    ['packetsInException', undef, 0, 1],
    ['packetsOutException', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
