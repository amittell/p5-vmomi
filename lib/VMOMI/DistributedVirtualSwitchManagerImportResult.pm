package VMOMI::DistributedVirtualSwitchManagerImportResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['distributedVirtualSwitch', 'ManagedObjectReference', 1, 0],
    ['distributedVirtualPortgroup', 'ManagedObjectReference', 1, 0],
    ['importFault', 'ImportOperationBulkFaultFaultOnImport', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
