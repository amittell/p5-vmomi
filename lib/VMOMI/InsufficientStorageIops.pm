package VMOMI::InsufficientStorageIops;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['unreservedIops', undef, 0, 1],
    ['requestedIops', undef, 0, 1],
    ['datastoreName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;