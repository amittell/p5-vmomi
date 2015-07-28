package VMOMI::VAppCloneSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['location', 'ManagedObjectReference', 0, 1],
    ['host', 'ManagedObjectReference', 0, 0],
    ['resourceSpec', 'ResourceConfigSpec', 0, 0],
    ['vmFolder', 'ManagedObjectReference', 0, 0],
    ['networkMapping', 'VAppCloneSpecNetworkMappingPair', 1, 0],
    ['property', 'KeyValue', 1, 0],
    ['resourceMapping', 'VAppCloneSpecResourceMap', 1, 0],
    ['provisioning', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
