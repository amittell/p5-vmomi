package VMOMI::DvsFilterConfig;
use parent 'VMOMI::InheritablePolicy';

our @class_ancestors = ( 
    'InheritablePolicy',
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 0],
    ['agentName', undef, 0, 0],
    ['slotNumber', undef, 0, 0],
    ['parameters', 'DvsFilterParameter', 0, 0],
    ['onFailure', undef, 0, 0],
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
