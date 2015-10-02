package VMOMI::HostVFlashManagerVFlashCacheConfigInfoVFlashModuleConfigOption;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vFlashModule', undef, 0, 1],
    ['vFlashModuleVersion', undef, 0, 1],
    ['minSupportedModuleVersion', undef, 0, 1],
    ['cacheConsistencyType', 'ChoiceOption', 0, 1],
    ['cacheMode', 'ChoiceOption', 0, 1],
    ['blockSizeInKBOption', 'LongOption', 0, 1],
    ['reservationInMBOption', 'LongOption', 0, 1],
    ['maxDiskSizeInKB', undef, 0, 1],
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
