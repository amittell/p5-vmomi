package VMOMI::HostNetworkSecurityPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['allowPromiscuous', 'boolean', 0, 0],
    ['macChanges', 'boolean', 0, 0],
    ['forgedTransmits', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
