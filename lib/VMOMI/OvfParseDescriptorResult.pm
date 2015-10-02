package VMOMI::OvfParseDescriptorResult;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['eula', undef, 1, 0],
    ['network', 'OvfNetworkInfo', 1, 0],
    ['ipAllocationScheme', undef, 1, 0],
    ['ipProtocols', undef, 1, 0],
    ['property', 'VAppPropertyInfo', 1, 0],
    ['productInfo', 'VAppProductInfo', 0, 0],
    ['annotation', undef, 0, 1],
    ['approximateDownloadSize', undef, 0, 0],
    ['approximateFlatDeploymentSize', undef, 0, 0],
    ['approximateSparseDeploymentSize', undef, 0, 0],
    ['defaultEntityName', undef, 0, 1],
    ['virtualApp', 'boolean', 0, 1],
    ['deploymentOption', 'OvfDeploymentOption', 1, 0],
    ['defaultDeploymentOption', undef, 0, 1],
    ['entityName', 'KeyValue', 1, 0],
    ['annotatedOst', 'OvfConsumerOstNode', 0, 0],
    ['error', 'LocalizedMethodFault', 1, 0],
    ['warning', 'LocalizedMethodFault', 1, 0],
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
