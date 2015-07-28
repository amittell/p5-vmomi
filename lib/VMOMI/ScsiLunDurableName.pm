package VMOMI::ScsiLunDurableName;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['namespace', undef, 0, 1],
    ['namespaceId', undef, 0, 1],
    ['data', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
