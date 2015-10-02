package VMOMI::HostRuntimeInfoNetStackInstanceRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['netStackInstanceKey', undef, 0, 1],
    ['state', undef, 0, 0],
    ['vmknicKeys', undef, 1, 0],
    ['maxNumberOfConnections', undef, 0, 0],
    ['currentIpV6Enabled', 'boolean', 0, 0],
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
