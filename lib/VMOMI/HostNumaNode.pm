package VMOMI::HostNumaNode;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['typeId', undef, 0, 1],
    ['cpuID', undef, 1, 1],
    ['memoryRangeBegin', undef, 0, 1],
    ['memoryRangeLength', undef, 0, 1],
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
