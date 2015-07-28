package VMOMI::ConnectedIso;
use parent 'VMOMI::OvfExport';

our @class_members = ( 
    ['cdrom', 'VirtualCdrom', 0, 1],
    ['filename', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
