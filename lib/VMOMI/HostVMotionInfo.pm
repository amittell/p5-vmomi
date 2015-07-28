package VMOMI::HostVMotionInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['netConfig', 'HostVMotionNetConfig', 0, 0],
    ['ipConfig', 'HostIpConfig', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
