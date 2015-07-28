package VMOMI::NetworkSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['network', 'ManagedObjectReference', 0, 0],
    ['name', undef, 0, 1],
    ['accessible', 'boolean', 0, 1],
    ['ipPoolName', undef, 0, 0],
    ['ipPoolId', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
