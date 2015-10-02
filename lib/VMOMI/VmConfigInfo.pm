package VMOMI::VmConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['product', 'VAppProductInfo', 1, 0],
    ['property', 'VAppPropertyInfo', 1, 0],
    ['ipAssignment', 'VAppIPAssignmentInfo', 0, 1],
    ['eula', undef, 1, 0],
    ['ovfSection', 'VAppOvfSectionInfo', 1, 0],
    ['ovfEnvironmentTransport', undef, 1, 0],
    ['installBootRequired', 'boolean', 0, 1],
    ['installBootStopDelay', undef, 0, 1],
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
