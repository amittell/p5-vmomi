package VMOMI::HostVFlashManagerVFlashResourceRunTimeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['usage', undef, 0, 1],
    ['capacity', undef, 0, 1],
    ['accessible', 'boolean', 0, 1],
    ['capacityForVmCache', undef, 0, 1],
    ['freeForVmCache', undef, 0, 1],
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
