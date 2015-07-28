package VMOMI::HostInternetScsiHbaAuthenticationProperties;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['chapAuthEnabled', 'boolean', 0, 1],
    ['chapName', undef, 0, 0],
    ['chapSecret', undef, 0, 0],
    ['chapAuthenticationType', undef, 0, 0],
    ['chapInherited', 'boolean', 0, 0],
    ['mutualChapName', undef, 0, 0],
    ['mutualChapSecret', undef, 0, 0],
    ['mutualChapAuthenticationType', undef, 0, 0],
    ['mutualChapInherited', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
