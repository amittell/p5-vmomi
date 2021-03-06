package VMOMI::HostFibreChannelHba;
use parent 'VMOMI::HostHostBusAdapter';

our @class_ancestors = ( 
    'HostHostBusAdapter',
    'DynamicData',
);

our @class_members = ( 
    ['portWorldWideName', undef, 0, 1],
    ['nodeWorldWideName', undef, 0, 1],
    ['portType', 'FibreChannelPortType', 0, 1],
    ['speed', undef, 0, 1],
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
