package VMOMI::HbrManagerReplicationVmInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['state', undef, 0, 1],
    ['progressInfo', 'ReplicationVmProgressInfo', 0, 0],
    ['imageId', undef, 0, 0],
    ['lastError', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
