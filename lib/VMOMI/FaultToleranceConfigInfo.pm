package VMOMI::FaultToleranceConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['role', undef, 0, 1],
    ['instanceUuids', undef, 1, 1],
    ['configPaths', undef, 1, 1],
    ['orphaned', 'boolean', 0, 0],
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
