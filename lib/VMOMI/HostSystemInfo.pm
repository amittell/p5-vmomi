package VMOMI::HostSystemInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vendor', undef, 0, 1],
    ['model', undef, 0, 1],
    ['uuid', undef, 0, 1],
    ['otherIdentifyingInfo', 'HostSystemIdentificationInfo', 1, 0],
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
