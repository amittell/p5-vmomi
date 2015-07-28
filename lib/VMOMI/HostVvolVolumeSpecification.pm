package VMOMI::HostVvolVolumeSpecification;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['maxSizeInMB', undef, 0, 1],
    ['volumeName', undef, 0, 1],
    ['vasaProviderInfo', 'VimVasaProviderInfo', 1, 0],
    ['storageArray', 'VASAStorageArray', 1, 0],
    ['uuid', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
