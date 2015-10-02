package VMOMI::HostProfileCompleteConfigSpec;
use parent 'VMOMI::HostProfileConfigSpec';

our @class_ancestors = ( 
    'HostProfileConfigSpec',
    'ProfileCreateSpec',
    'DynamicData',
);

our @class_members = ( 
    ['applyProfile', 'HostApplyProfile', 0, 0],
    ['customComplyProfile', 'ComplianceProfile', 0, 0],
    ['disabledExpressionListChanged', 'boolean', 0, 1],
    ['disabledExpressionList', undef, 1, 0],
    ['validatorHost', 'ManagedObjectReference', 0, 0],
    ['validating', 'boolean', 0, 0],
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
