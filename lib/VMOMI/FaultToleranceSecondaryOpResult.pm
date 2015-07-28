package VMOMI::FaultToleranceSecondaryOpResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['powerOnAttempted', 'boolean', 0, 1],
    ['powerOnResult', 'ClusterPowerOnVmResult', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
