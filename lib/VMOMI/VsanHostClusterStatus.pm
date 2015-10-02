package VMOMI::VsanHostClusterStatus;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['uuid', undef, 0, 0],
    ['nodeUuid', undef, 0, 0],
    ['health', undef, 0, 1],
    ['nodeState', 'VsanHostClusterStatusState', 0, 1],
    ['memberUuid', undef, 1, 0],
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
