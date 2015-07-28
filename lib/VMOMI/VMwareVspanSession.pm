package VMOMI::VMwareVspanSession;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['name', undef, 0, 0],
    ['description', undef, 0, 0],
    ['enabled', 'boolean', 0, 1],
    ['sourcePortTransmitted', 'VMwareVspanPort', 0, 0],
    ['sourcePortReceived', 'VMwareVspanPort', 0, 0],
    ['destinationPort', 'VMwareVspanPort', 0, 0],
    ['encapsulationVlanId', undef, 0, 0],
    ['stripOriginalVlan', 'boolean', 0, 1],
    ['mirroredPacketLength', undef, 0, 0],
    ['normalTrafficAllowed', 'boolean', 0, 1],
    ['sessionType', undef, 0, 0],
    ['samplingRate', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
