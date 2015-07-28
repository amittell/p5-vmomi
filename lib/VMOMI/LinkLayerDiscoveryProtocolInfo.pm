package VMOMI::LinkLayerDiscoveryProtocolInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['chassisId', undef, 0, 1],
    ['portId', undef, 0, 1],
    ['timeToLive', undef, 0, 1],
    ['parameter', 'KeyAnyValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;