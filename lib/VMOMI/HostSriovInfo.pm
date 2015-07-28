package VMOMI::HostSriovInfo;
use parent 'VMOMI::HostPciPassthruInfo';

our @class_members = ( 
    ['sriovEnabled', 'boolean', 0, 1],
    ['sriovCapable', 'boolean', 0, 1],
    ['sriovActive', 'boolean', 0, 1],
    ['numVirtualFunctionRequested', undef, 0, 1],
    ['numVirtualFunction', undef, 0, 1],
    ['maxVirtualFunctionSupported', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
