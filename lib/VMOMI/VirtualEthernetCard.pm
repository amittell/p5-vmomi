package VMOMI::VirtualEthernetCard;
use parent 'VMOMI::VirtualDevice';

our @class_members = ( 
    ['addressType', undef, 0, 0],
    ['macAddress', undef, 0, 0],
    ['wakeOnLanEnabled', 'boolean', 0, 0],
    ['resourceAllocation', 'VirtualEthernetCardResourceAllocation', 0, 0],
    ['externalId', undef, 0, 0],
    ['uptCompatibilityEnabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
