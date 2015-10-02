package VMOMI::OvfCreateImportSpecParams;
use parent 'VMOMI::OvfManagerCommonParams';

our @class_ancestors = ( 
    'OvfManagerCommonParams',
    'DynamicData',
);

our @class_members = ( 
    ['entityName', undef, 0, 1],
    ['hostSystem', 'ManagedObjectReference', 0, 0],
    ['networkMapping', 'OvfNetworkMapping', 1, 0],
    ['ipAllocationPolicy', undef, 0, 0],
    ['ipProtocol', undef, 0, 0],
    ['propertyMapping', 'KeyValue', 1, 0],
    ['resourceMapping', 'OvfResourceMap', 1, 0],
    ['diskProvisioning', undef, 0, 0],
    ['instantiationOst', 'OvfConsumerOstNode', 0, 0],
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
