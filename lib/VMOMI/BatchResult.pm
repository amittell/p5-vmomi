package VMOMI::BatchResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['result', undef, 0, 1],
    ['hostKey', undef, 0, 1],
    ['ds', 'ManagedObjectReference', 0, 0],
    ['fault', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
