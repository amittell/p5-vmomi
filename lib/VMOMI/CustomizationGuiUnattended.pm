package VMOMI::CustomizationGuiUnattended;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['password', 'CustomizationPassword', 0, 0],
    ['timeZone', undef, 0, 1],
    ['autoLogon', 'boolean', 0, 1],
    ['autoLogonCount', undef, 0, 1],
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
