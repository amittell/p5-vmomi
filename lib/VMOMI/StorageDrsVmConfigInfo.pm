package VMOMI::StorageDrsVmConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 0],
    ['enabled', 'boolean', 0, 0],
    ['behavior', undef, 0, 0],
    ['intraVmAffinity', 'boolean', 0, 0],
    ['intraVmAntiAffinity', 'VirtualDiskAntiAffinityRuleSpec', 0, 0],
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
