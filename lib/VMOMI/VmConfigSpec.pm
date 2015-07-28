package VMOMI::VmConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['product', 'VAppProductSpec', 1, 0],
    ['property', 'VAppPropertySpec', 1, 0],
    ['ipAssignment', 'VAppIPAssignmentInfo', 0, 0],
    ['eula', undef, 1, 0],
    ['ovfSection', 'VAppOvfSectionSpec', 1, 0],
    ['ovfEnvironmentTransport', undef, 1, 0],
    ['installBootRequired', 'boolean', 0, 0],
    ['installBootStopDelay', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
