package VMOMI::FeatureRequirementsNotMet;
use parent 'VMOMI::VirtualHardwareCompatibilityIssue';

our @class_members = ( 
    ['featureRequirement', 'VirtualMachineFeatureRequirement', 1, 0],
    ['vm', 'ManagedObjectReference', 0, 0],
    ['host', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
