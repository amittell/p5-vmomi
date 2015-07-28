package VMOMI::ClusterDrsConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['enableVmBehaviorOverrides', 'boolean', 0, 0],
    ['defaultVmBehavior', 'DrsBehavior', 0, 0],
    ['vmotionRate', undef, 0, 0],
    ['option', 'OptionValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
