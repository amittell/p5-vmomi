package VMOMI::NetDnsConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['dhcp', 'boolean', 0, 1],
    ['hostName', undef, 0, 1],
    ['domainName', undef, 0, 1],
    ['ipAddress', undef, 1, 0],
    ['searchDomain', undef, 1, 0],
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
