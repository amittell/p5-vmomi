package VMOMI::HostPlugStoreTopology;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['adapter', 'HostPlugStoreTopologyAdapter', 1, 0],
    ['path', 'HostPlugStoreTopologyPath', 1, 0],
    ['target', 'HostPlugStoreTopologyTarget', 1, 0],
    ['device', 'HostPlugStoreTopologyDevice', 1, 0],
    ['plugin', 'HostPlugStoreTopologyPlugin', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
