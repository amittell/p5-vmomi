package VMOMI::ComplianceResult;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['profile', 'ManagedObjectReference', 0, 0],
    ['complianceStatus', undef, 0, 1],
    ['entity', 'ManagedObjectReference', 0, 0],
    ['checkTime', undef, 0, 0],
    ['failure', 'ComplianceFailure', 1, 0],
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
