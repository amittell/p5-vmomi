package VMOMI::HostProtocolEndpoint;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['peType', undef, 0, 1],
    ['uuid', undef, 0, 1],
    ['hostKey', 'ManagedObjectReference', 1, 0],
    ['storageArray', undef, 0, 0],
    ['nfsServer', undef, 0, 0],
    ['nfsDir', undef, 0, 0],
    ['deviceId', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
