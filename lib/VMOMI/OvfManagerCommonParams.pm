package VMOMI::OvfManagerCommonParams;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['locale', undef, 0, 1],
    ['deploymentOption', undef, 0, 1],
    ['msgBundle', 'KeyValue', 1, 0],
    ['importOption', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
