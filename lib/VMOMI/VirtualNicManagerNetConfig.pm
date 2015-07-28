package VMOMI::VirtualNicManagerNetConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['nicType', undef, 0, 1],
    ['multiSelectAllowed', 'boolean', 0, 1],
    ['candidateVnic', 'HostVirtualNic', 1, 0],
    ['selectedVnic', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
