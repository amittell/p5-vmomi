package VMOMI::VsanHostConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['enabled', 'boolean', 0, 0],
    ['hostSystem', 'ManagedObjectReference', 0, 0],
    ['clusterInfo', 'VsanHostConfigInfoClusterInfo', 0, 0],
    ['storageInfo', 'VsanHostConfigInfoStorageInfo', 0, 0],
    ['networkInfo', 'VsanHostConfigInfoNetworkInfo', 0, 0],
    ['faultDomainInfo', 'VsanHostFaultDomainInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
