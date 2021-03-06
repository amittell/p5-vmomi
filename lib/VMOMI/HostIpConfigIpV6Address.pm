package VMOMI::HostIpConfigIpV6Address;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['ipAddress', undef, 0, 1],
    ['prefixLength', undef, 0, 1],
    ['origin', undef, 0, 0],
    ['dadState', undef, 0, 0],
    ['lifetime', undef, 0, 0],
    ['operation', undef, 0, 0],
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
