package VMOMI::HostProfileSerializedHostProfileSpec;
use parent 'VMOMI::ProfileSerializedCreateSpec';

our @class_ancestors = ( 
    'ProfileSerializedCreateSpec',
    'ProfileCreateSpec',
    'DynamicData',
);

our @class_members = ( 
    ['validatorHost', 'ManagedObjectReference', 0, 0],
    ['validating', 'boolean', 0, 0],
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
