package VMOMI::DvsHealthStatusChangeEvent;
use parent 'VMOMI::HostEvent';

our @class_ancestors = ( 
    'HostEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['switchUuid', undef, 0, 1],
    ['healthResult', 'HostMemberHealthCheckResult', 0, 0],
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
