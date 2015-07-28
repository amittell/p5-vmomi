package VMOMI::HbrManagerVmReplicationCapability;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['supportedQuiesceMode', undef, 0, 1],
    ['compressionSupported', 'boolean', 0, 1],
    ['maxSupportedSourceDiskCapacity', undef, 0, 1],
    ['minRpo', undef, 0, 0],
    ['fault', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
