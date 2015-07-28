package VMOMI::HostIpChangedEvent;
use parent 'VMOMI::HostEvent';

our @class_members = ( 
    ['oldIP', undef, 0, 1],
    ['newIP', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
