package VMOMI::EventEx;
use parent 'VMOMI::Event';

our @class_ancestors = ( 
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['eventTypeId', undef, 0, 1],
    ['severity', undef, 0, 0],
    ['message', undef, 0, 0],
    ['arguments', 'KeyAnyValue', 1, 0],
    ['objectId', undef, 0, 0],
    ['objectType', undef, 0, 0],
    ['objectName', undef, 0, 0],
    ['fault', 'LocalizedMethodFault', 0, 0],
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
