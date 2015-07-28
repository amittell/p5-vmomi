package VMOMI::NamePasswordAuthentication;
use parent 'VMOMI::GuestAuthentication';

our @class_members = ( 
    ['username', undef, 0, 1],
    ['password', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
