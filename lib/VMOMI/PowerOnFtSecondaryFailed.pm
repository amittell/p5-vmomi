package VMOMI::PowerOnFtSecondaryFailed;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['vmName', undef, 0, 1],
    ['hostSelectionBy', 'FtIssuesOnHostHostSelectionType', 0, 1],
    ['hostErrors', 'LocalizedMethodFault', 1, 0],
    ['rootCause', 'LocalizedMethodFault', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
