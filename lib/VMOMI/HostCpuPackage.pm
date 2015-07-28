package VMOMI::HostCpuPackage;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['index', undef, 0, 1],
    ['vendor', undef, 0, 1],
    ['hz', undef, 0, 1],
    ['busHz', undef, 0, 1],
    ['description', undef, 0, 1],
    ['threadId', undef, 1, 1],
    ['cpuFeature', 'HostCpuIdInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
