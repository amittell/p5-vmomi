package VMOMI::VmFaultToleranceConfigIssue;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_members = ( 
    ['reason', undef, 0, 0],
    ['entityName', undef, 0, 0],
    ['entity', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
