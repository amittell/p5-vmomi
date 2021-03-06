package VMOMI::CustomizationSysprepFailed;
use parent 'VMOMI::CustomizationFailed';

our @class_ancestors = ( 
    'CustomizationFailed',
    'CustomizationEvent',
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['sysprepVersion', undef, 0, 1],
    ['systemVersion', undef, 0, 1],
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
