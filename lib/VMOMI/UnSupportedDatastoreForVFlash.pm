package VMOMI::UnSupportedDatastoreForVFlash;
use parent 'VMOMI::UnsupportedDatastore';

our @class_ancestors = ( 
    'UnsupportedDatastore',
    'VmConfigFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['datastoreName', undef, 0, 1],
    ['type', undef, 0, 1],
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
