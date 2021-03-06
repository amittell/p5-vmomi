package VMOMI::ProfileParameterMetadata;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['id', 'ExtendedElementDescription', 0, 1],
    ['type', undef, 0, 1],
    ['optional', 'boolean', 0, 1],
    ['defaultValue', 'anyType', 0, 0],
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
