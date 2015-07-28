package VMOMI::HostVmfsSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['extent', 'HostScsiDiskPartition', 0, 1],
    ['blockSizeMb', undef, 0, 0],
    ['majorVersion', undef, 0, 1],
    ['volumeName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
