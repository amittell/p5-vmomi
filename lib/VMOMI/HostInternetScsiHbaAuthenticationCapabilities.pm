package VMOMI::HostInternetScsiHbaAuthenticationCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['chapAuthSettable', 'boolean', 0, 1],
    ['krb5AuthSettable', 'boolean', 0, 1],
    ['srpAuthSettable', 'boolean', 0, 1],
    ['spkmAuthSettable', 'boolean', 0, 1],
    ['mutualChapSettable', 'boolean', 0, 0],
    ['targetChapSettable', 'boolean', 0, 0],
    ['targetMutualChapSettable', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
