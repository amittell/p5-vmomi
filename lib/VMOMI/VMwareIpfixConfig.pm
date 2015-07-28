package VMOMI::VMwareIpfixConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['collectorIpAddress', undef, 0, 0],
    ['collectorPort', undef, 0, 0],
    ['observationDomainId', undef, 0, 0],
    ['activeFlowTimeout', undef, 0, 1],
    ['idleFlowTimeout', undef, 0, 1],
    ['samplingRate', undef, 0, 1],
    ['internalFlowsOnly', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
