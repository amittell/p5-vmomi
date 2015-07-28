package VMOMI::OvfCreateDescriptorResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['ovfDescriptor', undef, 0, 1],
    ['error', 'LocalizedMethodFault', 1, 0],
    ['warning', 'LocalizedMethodFault', 1, 0],
    ['includeImageFiles', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
