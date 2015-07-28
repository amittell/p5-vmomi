package VMOMI::HostActiveDirectoryInfo;
use parent 'VMOMI::HostDirectoryStoreInfo';

our @class_members = ( 
    ['joinedDomain', undef, 0, 0],
    ['trustedDomain', undef, 1, 0],
    ['domainMembershipStatus', undef, 0, 0],
    ['smartCardAuthenticationEnabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
