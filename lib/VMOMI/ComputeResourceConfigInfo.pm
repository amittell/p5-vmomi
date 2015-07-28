package VMOMI::ComputeResourceConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vmSwapPlacement', undef, 0, 1],
    ['spbmEnabled', 'boolean', 0, 0],
    ['defaultHardwareVersionKey', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
