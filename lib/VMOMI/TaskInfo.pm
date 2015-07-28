package VMOMI::TaskInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['task', 'ManagedObjectReference', 0, 1],
    ['description', 'LocalizableMessage', 0, 0],
    ['name', undef, 0, 0],
    ['descriptionId', undef, 0, 1],
    ['entity', 'ManagedObjectReference', 0, 0],
    ['entityName', undef, 0, 0],
    ['locked', 'ManagedObjectReference', 1, 0],
    ['state', 'TaskInfoState', 0, 1],
    ['cancelled', 'boolean', 0, 1],
    ['cancelable', 'boolean', 0, 1],
    ['error', 'LocalizedMethodFault', 0, 0],
    ['result', undef, 0, 0],
    ['progress', undef, 0, 0],
    ['reason', 'TaskReason', 0, 1],
    ['queueTime', undef, 0, 1],
    ['startTime', undef, 0, 0],
    ['completeTime', undef, 0, 0],
    ['eventChainId', undef, 0, 1],
    ['changeTag', undef, 0, 0],
    ['parentTaskKey', undef, 0, 0],
    ['rootTaskKey', undef, 0, 0],
    ['activationId', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
