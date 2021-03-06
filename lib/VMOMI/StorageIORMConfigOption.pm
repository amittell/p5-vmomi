package VMOMI::StorageIORMConfigOption;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabledOption', 'BoolOption', 0, 1],
    ['congestionThresholdOption', 'IntOption', 0, 1],
    ['statsCollectionEnabledOption', 'BoolOption', 0, 0],
    ['reservationEnabledOption', 'BoolOption', 0, 0],
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
