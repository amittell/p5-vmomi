package VMOMI::OvfMappedOsId;
use parent 'VMOMI::OvfImport';

our @class_members = ( 
    ['ovfId', undef, 0, 1],
    ['ovfDescription', undef, 0, 1],
    ['targetDescription', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
