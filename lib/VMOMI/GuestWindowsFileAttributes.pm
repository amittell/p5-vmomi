package VMOMI::GuestWindowsFileAttributes;
use parent 'VMOMI::GuestFileAttributes';

our @class_members = ( 
    ['hidden', 'boolean', 0, 0],
    ['readOnly', 'boolean', 0, 0],
    ['createTime', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
