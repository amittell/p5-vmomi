package VMOMI::VmFaultToleranceOpIssuesList;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_ancestors = ( 
    'VmFaultToleranceIssue',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['errors', 'LocalizedMethodFault', 1, 0],
    ['warnings', 'LocalizedMethodFault', 1, 0],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
