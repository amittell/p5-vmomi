package VMOMI::AutoStartDefaults;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['startDelay', undef, 0, 0],
    ['stopDelay', undef, 0, 0],
    ['waitForHeartbeat', 'boolean', 0, 0],
    ['stopAction', undef, 0, 0],
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
