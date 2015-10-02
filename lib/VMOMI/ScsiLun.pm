package VMOMI::ScsiLun;
use parent 'VMOMI::HostDevice';

our @class_ancestors = ( 
    'HostDevice',
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 0],
    ['uuid', undef, 0, 1],
    ['descriptor', 'ScsiLunDescriptor', 1, 0],
    ['canonicalName', undef, 0, 0],
    ['displayName', undef, 0, 0],
    ['lunType', undef, 0, 1],
    ['vendor', undef, 0, 0],
    ['model', undef, 0, 0],
    ['revision', undef, 0, 0],
    ['scsiLevel', undef, 0, 0],
    ['serialNumber', undef, 0, 0],
    ['durableName', 'ScsiLunDurableName', 0, 0],
    ['alternateName', 'ScsiLunDurableName', 1, 0],
    ['standardInquiry', undef, 1, 0],
    ['queueDepth', undef, 0, 0],
    ['operationalState', undef, 1, 1],
    ['capabilities', 'ScsiLunCapabilities', 0, 0],
    ['vStorageSupport', undef, 0, 0],
    ['protocolEndpoint', 'boolean', 0, 0],
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
