package VMOMI::HostFibreChannelTargetTransport;
use parent 'VMOMI::HostTargetTransport';

our @class_members = ( 
    ['portWorldWideName', undef, 0, 1],
    ['nodeWorldWideName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
