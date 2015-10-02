package VMOMI::HostProfileConfigInfo;
use parent 'VMOMI::ProfileConfigInfo';

our @class_ancestors = ( 
    'ProfileConfigInfo',
    'DynamicData',
);

our @class_members = ( 
    ['applyProfile', 'HostApplyProfile', 0, 0],
    ['defaultComplyProfile', 'ComplianceProfile', 0, 0],
    ['defaultComplyLocator', 'ComplianceLocator', 1, 0],
    ['customComplyProfile', 'ComplianceProfile', 0, 0],
    ['disabledExpressionList', undef, 1, 0],
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
