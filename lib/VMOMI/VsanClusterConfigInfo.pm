package VMOMI::VsanClusterConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['defaultConfig', 'VsanClusterConfigInfoHostDefaultInfo', 0, 0],
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
