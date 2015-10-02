package VMOMI::AlarmState;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['entity', 'ManagedObjectReference', 0, 1],
    ['alarm', 'ManagedObjectReference', 0, 1],
    ['overallStatus', 'ManagedEntityStatus', 0, 1],
    ['time', undef, 0, 1],
    ['acknowledged', 'boolean', 0, 0],
    ['acknowledgedByUser', undef, 0, 0],
    ['acknowledgedTime', undef, 0, 0],
    ['eventKey', undef, 0, 0],
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
