package VMOMI::HostSriovConfig;
use parent 'VMOMI::HostPciPassthruConfig';

our @class_ancestors = ( 
    'HostPciPassthruConfig',
    'DynamicData',
);

our @class_members = ( 
    ['sriovEnabled', 'boolean', 0, 1],
    ['numVirtualFunction', undef, 0, 1],
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
