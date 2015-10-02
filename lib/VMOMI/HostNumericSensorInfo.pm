package VMOMI::HostNumericSensorInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['healthState', 'ElementDescription', 0, 0],
    ['currentReading', undef, 0, 1],
    ['unitModifier', undef, 0, 1],
    ['baseUnits', undef, 0, 1],
    ['rateUnits', undef, 0, 0],
    ['sensorType', undef, 0, 1],
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
