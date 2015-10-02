package VMOMI::HostActiveDirectorySpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['domainName', undef, 0, 0],
    ['userName', undef, 0, 0],
    ['password', undef, 0, 0],
    ['camServer', undef, 0, 0],
    ['thumbprint', undef, 0, 0],
    ['smartCardAuthenticationEnabled', 'boolean', 0, 0],
    ['smartCardTrustAnchors', undef, 1, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
