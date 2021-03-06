package VMOMI::DvsFilterConfigSpec;
use parent 'VMOMI::DvsFilterConfig';

our @class_ancestors = ( 
    'DvsFilterConfig',
    'InheritablePolicy',
    'DynamicData',
);

our @class_members = ( 
    ['operation', undef, 0, 1],
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
