package VMOMI::HostProfileHostBasedConfigSpec;
use parent 'VMOMI::HostProfileConfigSpec';

our @class_ancestors = ( 
    'HostProfileConfigSpec',
    'ProfileCreateSpec',
    'DynamicData',
);

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['useHostProfileEngine', 'boolean', 0, 0],
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
