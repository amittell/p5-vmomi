package VMOMI::HostMemberRuntimeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['status', undef, 0, 0],
    ['statusDetail', undef, 0, 0],
    ['healthCheckResult', 'HostMemberHealthCheckResult', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
