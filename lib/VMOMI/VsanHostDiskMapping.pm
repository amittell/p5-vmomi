package VMOMI::VsanHostDiskMapping;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ssd', 'HostScsiDisk', 0, 1],
    ['nonSsd', 'HostScsiDisk', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
