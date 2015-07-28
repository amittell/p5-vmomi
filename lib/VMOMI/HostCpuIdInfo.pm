package VMOMI::HostCpuIdInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['level', undef, 0, 1],
    ['vendor', undef, 0, 0],
    ['eax', undef, 0, 0],
    ['ebx', undef, 0, 0],
    ['ecx', undef, 0, 0],
    ['edx', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
