package VMOMI::HostVirtualNic;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['device', undef, 0, 1],
    ['key', undef, 0, 1],
    ['portgroup', undef, 0, 1],
    ['spec', 'HostVirtualNicSpec', 0, 1],
    ['port', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
