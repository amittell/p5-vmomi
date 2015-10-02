package VMOMI::HostLowLevelProvisioningManagerDiskLayoutSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['controllerType', undef, 0, 1],
    ['busNumber', undef, 0, 1],
    ['unitNumber', undef, 0, 1],
    ['srcFilename', undef, 0, 1],
    ['dstFilename', undef, 0, 1],
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
