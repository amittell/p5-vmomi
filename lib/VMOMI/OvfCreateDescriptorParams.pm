package VMOMI::OvfCreateDescriptorParams;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ovfFiles', 'OvfFile', 1, 0],
    ['name', undef, 0, 0],
    ['description', undef, 0, 0],
    ['includeImageFiles', 'boolean', 0, 0],
    ['exportOption', undef, 1, 0],
    ['snapshot', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
