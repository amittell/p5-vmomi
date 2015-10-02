package VMOMI::VsanPolicyCost;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['changeDataSize', undef, 0, 0],
    ['currentDataSize', undef, 0, 0],
    ['tempDataSize', undef, 0, 0],
    ['copyDataSize', undef, 0, 0],
    ['changeFlashReadCacheSize', undef, 0, 0],
    ['currentFlashReadCacheSize', undef, 0, 0],
    ['currentDiskSpaceToAddressSpaceRatio', undef, 0, 0],
    ['diskSpaceToAddressSpaceRatio', undef, 0, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
