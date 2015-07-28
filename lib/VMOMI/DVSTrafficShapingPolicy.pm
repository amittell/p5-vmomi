package VMOMI::DVSTrafficShapingPolicy;
use parent 'VMOMI::InheritablePolicy';

our @class_members = ( 
    ['enabled', 'BoolPolicy', 0, 0],
    ['averageBandwidth', 'LongPolicy', 0, 0],
    ['peakBandwidth', 'LongPolicy', 0, 0],
    ['burstSize', 'LongPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
