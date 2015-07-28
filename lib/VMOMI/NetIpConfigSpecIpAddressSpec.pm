package VMOMI::NetIpConfigSpecIpAddressSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ipAddress', undef, 0, 1],
    ['prefixLength', undef, 0, 1],
    ['operation', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
