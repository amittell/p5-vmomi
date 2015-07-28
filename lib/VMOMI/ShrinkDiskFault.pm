package VMOMI::ShrinkDiskFault;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['diskId', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
