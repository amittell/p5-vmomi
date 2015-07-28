package VMOMI::HostMountInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['path', undef, 0, 0],
    ['accessMode', undef, 0, 1],
    ['mounted', 'boolean', 0, 0],
    ['accessible', 'boolean', 0, 0],
    ['inaccessibleReason', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
