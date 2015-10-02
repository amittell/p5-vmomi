package VMOMI::OvfConsumerOstNode;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', undef, 0, 1],
    ['type', undef, 0, 1],
    ['section', 'OvfConsumerOvfSection', 1, 0],
    ['child', 'OvfConsumerOstNode', 1, 0],
    ['entity', 'ManagedObjectReference', 0, 0],
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
