package VMOMI::HostPosixAccountSpec;
use parent 'VMOMI::HostAccountSpec';

our @class_ancestors = ( 
    'HostAccountSpec',
    'DynamicData',
);

our @class_members = ( 
    ['posixId', undef, 0, 0],
    ['shellAccess', 'boolean', 0, 0],
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
