package VMOMI::VAppIPAssignmentInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['supportedAllocationScheme', undef, 1, 0],
    ['ipAllocationPolicy', undef, 0, 0],
    ['supportedIpProtocol', undef, 1, 0],
    ['ipProtocol', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
