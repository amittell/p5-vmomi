package VMOMI::HostLowLevelProvisioningManagerFileReserveSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['baseName', undef, 0, 1],
    ['parentDir', undef, 0, 1],
    ['fileType', undef, 0, 1],
    ['storageProfile', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
