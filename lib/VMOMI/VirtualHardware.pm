package VMOMI::VirtualHardware;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['numCPU', undef, 0, 1],
    ['numCoresPerSocket', undef, 0, 0],
    ['memoryMB', undef, 0, 1],
    ['virtualICH7MPresent', 'boolean', 0, 0],
    ['virtualSMCPresent', 'boolean', 0, 0],
    ['device', 'VirtualDevice', 1, 0],
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
