package VMOMI::VMwareDVSPvlanMapEntry;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['primaryVlanId', undef, 0, 1],
    ['secondaryVlanId', undef, 0, 1],
    ['pvlanType', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
