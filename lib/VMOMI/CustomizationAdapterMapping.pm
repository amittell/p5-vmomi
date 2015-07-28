package VMOMI::CustomizationAdapterMapping;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['macAddress', undef, 0, 0],
    ['adapter', 'CustomizationIPSettings', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
