package VMOMI::GuestRegKeySpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['keyName', 'GuestRegKeyNameSpec', 0, 1],
    ['classType', undef, 0, 1],
    ['lastWritten', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
