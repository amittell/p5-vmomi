package VMOMI::ClusterVmComponentProtectionSettings;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vmStorageProtectionForAPD', undef, 0, 0],
    ['enableAPDTimeoutForHosts', 'boolean', 0, 0],
    ['vmTerminateDelayForAPDSec', undef, 0, 0],
    ['vmReactionOnAPDCleared', undef, 0, 0],
    ['vmStorageProtectionForPDL', undef, 0, 0],
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
