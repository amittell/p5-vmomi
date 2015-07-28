package VMOMI::FcoeConfigFcoeCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['priorityClass', 'boolean', 0, 1],
    ['sourceMacAddress', 'boolean', 0, 1],
    ['vlanRange', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
