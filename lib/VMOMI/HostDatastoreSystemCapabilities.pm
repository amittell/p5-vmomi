package VMOMI::HostDatastoreSystemCapabilities;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['nfsMountCreationRequired', 'boolean', 0, 1],
    ['nfsMountCreationSupported', 'boolean', 0, 1],
    ['localDatastoreSupported', 'boolean', 0, 1],
    ['vmfsExtentExpansionSupported', 'boolean', 0, 0],
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
