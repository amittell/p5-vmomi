package VMOMI::HostInventoryFull;
use parent 'VMOMI::NotEnoughLicenses';

our @class_ancestors = ( 
    'NotEnoughLicenses',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['capacity', undef, 0, 1],
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
