package VMOMI::HostLowLevelProvisioningManagerSnapshotLayoutSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['srcFilename', undef, 0, 1],
    ['dstFilename', undef, 0, 1],
    ['disk', 'HostLowLevelProvisioningManagerDiskLayoutSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
