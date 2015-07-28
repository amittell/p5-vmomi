package VMOMI::HostVvolVolume;
use parent 'VMOMI::HostFileSystemVolume';

our @class_members = ( 
    ['scId', undef, 0, 1],
    ['hostPE', 'VVolHostPE', 1, 0],
    ['vasaProviderInfo', 'VimVasaProviderInfo', 1, 0],
    ['storageArray', 'VASAStorageArray', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;