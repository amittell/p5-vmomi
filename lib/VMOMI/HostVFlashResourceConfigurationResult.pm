package VMOMI::HostVFlashResourceConfigurationResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['devicePath', undef, 1, 0],
    ['vffs', 'HostVffsVolume', 0, 0],
    ['diskConfigurationResult', 'HostDiskConfigurationResult', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
