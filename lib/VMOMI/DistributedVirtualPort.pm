package VMOMI::DistributedVirtualPort;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['config', 'DVPortConfigInfo', 0, 1],
    ['dvsUuid', undef, 0, 1],
    ['portgroupKey', undef, 0, 0],
    ['proxyHost', 'ManagedObjectReference', 0, 0],
    ['connectee', 'DistributedVirtualSwitchPortConnectee', 0, 0],
    ['conflict', 'boolean', 0, 1],
    ['conflictPortKey', undef, 0, 0],
    ['state', 'DVPortState', 0, 0],
    ['connectionCookie', undef, 0, 0],
    ['lastStatusChange', undef, 0, 1],
    ['hostLocalPort', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
