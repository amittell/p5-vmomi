package VMOMI::HostUnresolvedVmfsResolutionResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['spec', 'HostUnresolvedVmfsResolutionSpec', 0, 1],
    ['vmfs', 'HostVmfsVolume', 0, 0],
    ['fault', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
