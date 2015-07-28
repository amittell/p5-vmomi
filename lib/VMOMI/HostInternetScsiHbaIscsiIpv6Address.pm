package VMOMI::HostInternetScsiHbaIscsiIpv6Address;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['address', undef, 0, 1],
    ['prefixLength', undef, 0, 1],
    ['origin', undef, 0, 1],
    ['operation', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;