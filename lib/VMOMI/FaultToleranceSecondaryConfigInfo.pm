package VMOMI::FaultToleranceSecondaryConfigInfo;
use parent 'VMOMI::FaultToleranceConfigInfo';

our @class_ancestors = ( 
    'FaultToleranceConfigInfo',
    'DynamicData',
);

our @class_members = ( 
    ['primaryVM', 'ManagedObjectReference', 0, 1],
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
