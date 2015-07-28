package VMOMI::EventFilterSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['entity', 'EventFilterSpecByEntity', 0, 0],
    ['time', 'EventFilterSpecByTime', 0, 0],
    ['userName', 'EventFilterSpecByUsername', 0, 0],
    ['eventChainId', undef, 0, 0],
    ['alarm', 'ManagedObjectReference', 0, 0],
    ['scheduledTask', 'ManagedObjectReference', 0, 0],
    ['disableFullMessage', 'boolean', 0, 0],
    ['category', undef, 1, 0],
    ['type', undef, 1, 0],
    ['tag', undef, 1, 0],
    ['eventTypeId', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
