package VMOMI::CustomizationFixedIpV6;
use parent 'VMOMI::CustomizationIpV6Generator';

our @class_members = ( 
    ['ipAddress', undef, 0, 1],
    ['subnetMask', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
