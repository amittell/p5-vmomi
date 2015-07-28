package VMOMI::ClusterDrsVmConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', 'ManagedObjectReference', 0, 1],
    ['enabled', 'boolean', 0, 0],
    ['behavior', 'DrsBehavior', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
