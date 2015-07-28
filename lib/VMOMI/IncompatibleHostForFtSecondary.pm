package VMOMI::IncompatibleHostForFtSecondary;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['error', 'LocalizedMethodFault', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;