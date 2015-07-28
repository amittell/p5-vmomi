package VMOMI::HostNumaInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['type', undef, 0, 1],
    ['numNodes', undef, 0, 1],
    ['numaNode', 'HostNumaNode', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;