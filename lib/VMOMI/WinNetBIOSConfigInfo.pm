package VMOMI::WinNetBIOSConfigInfo;
use parent 'VMOMI::NetBIOSConfigInfo';

our @class_members = ( 
    ['primaryWINS', undef, 0, 1],
    ['secondaryWINS', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
