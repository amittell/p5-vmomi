package VMOMI::VmFaultToleranceConfigIssueWrapper;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_members = ( 
    ['entityName', undef, 0, 0],
    ['entity', 'ManagedObjectReference', 0, 0],
    ['error', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
