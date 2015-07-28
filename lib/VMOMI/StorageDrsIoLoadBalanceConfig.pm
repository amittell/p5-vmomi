package VMOMI::StorageDrsIoLoadBalanceConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['reservablePercentThreshold', undef, 0, 0],
    ['reservableIopsThreshold', undef, 0, 0],
    ['reservableThresholdMode', undef, 0, 0],
    ['ioLatencyThreshold', undef, 0, 0],
    ['ioLoadImbalanceThreshold', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
