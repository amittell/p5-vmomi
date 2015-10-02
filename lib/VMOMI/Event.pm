package VMOMI::Event;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['chainId', undef, 0, 1],
    ['createdTime', undef, 0, 1],
    ['userName', undef, 0, 1],
    ['datacenter', 'DatacenterEventArgument', 0, 0],
    ['computeResource', 'ComputeResourceEventArgument', 0, 0],
    ['host', 'HostEventArgument', 0, 0],
    ['vm', 'VmEventArgument', 0, 0],
    ['ds', 'DatastoreEventArgument', 0, 0],
    ['net', 'NetworkEventArgument', 0, 0],
    ['dvs', 'DvsEventArgument', 0, 0],
    ['fullFormattedMessage', undef, 0, 0],
    ['changeTag', undef, 0, 0],
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
