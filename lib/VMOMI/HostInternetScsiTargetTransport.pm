package VMOMI::HostInternetScsiTargetTransport;
use parent 'VMOMI::HostTargetTransport';

our @class_ancestors = ( 
    'HostTargetTransport',
    'DynamicData',
);

our @class_members = ( 
    ['iScsiName', undef, 0, 1],
    ['iScsiAlias', undef, 0, 1],
    ['address', undef, 1, 0],
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
