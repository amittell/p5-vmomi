package VMOMI::VsanPolicySatisfiability;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['uuid', undef, 0, 0],
    ['isSatisfiable', 'boolean', 0, 1],
    ['reason', 'LocalizableMessage', 0, 0],
    ['cost', 'VsanPolicyCost', 0, 0],
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
