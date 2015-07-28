package VMOMI::VspanPromiscuousPortNotSupported;
use parent 'VMOMI::DvsFault';

our @class_members = ( 
    ['vspanSessionKey', undef, 0, 1],
    ['portKey', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;