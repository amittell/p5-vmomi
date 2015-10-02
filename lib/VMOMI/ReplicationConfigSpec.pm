package VMOMI::ReplicationConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['generation', undef, 0, 1],
    ['vmReplicationId', undef, 0, 1],
    ['destination', undef, 0, 1],
    ['port', undef, 0, 1],
    ['rpo', undef, 0, 1],
    ['quiesceGuestEnabled', 'boolean', 0, 1],
    ['paused', 'boolean', 0, 1],
    ['oppUpdatesEnabled', 'boolean', 0, 1],
    ['netCompressionEnabled', 'boolean', 0, 0],
    ['disk', 'ReplicationInfoDiskSettings', 1, 0],
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
