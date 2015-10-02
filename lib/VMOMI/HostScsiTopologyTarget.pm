package VMOMI::HostScsiTopologyTarget;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['target', undef, 0, 1],
    ['lun', 'HostScsiTopologyLun', 1, 0],
    ['transport', 'HostTargetTransport', 0, 0],
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
