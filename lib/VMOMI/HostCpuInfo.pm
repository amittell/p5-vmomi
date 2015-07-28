package VMOMI::HostCpuInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['numCpuPackages', undef, 0, 1],
    ['numCpuCores', undef, 0, 1],
    ['numCpuThreads', undef, 0, 1],
    ['hz', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
