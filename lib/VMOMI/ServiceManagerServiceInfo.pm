package VMOMI::ServiceManagerServiceInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['serviceName', undef, 0, 1],
    ['location', undef, 1, 0],
    ['service', 'ManagedObjectReference', 0, 1],
    ['description', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
