package VMOMI::GuestFileInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['path', undef, 0, 1],
    ['type', undef, 0, 1],
    ['size', undef, 0, 1],
    ['attributes', 'GuestFileAttributes', 0, 1],
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
