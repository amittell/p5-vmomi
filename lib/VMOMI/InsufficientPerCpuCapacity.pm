package VMOMI::InsufficientPerCpuCapacity;
use parent 'VMOMI::InsufficientHostCapacityFault';

our @class_ancestors = ( 
    'InsufficientHostCapacityFault',
    'InsufficientResourcesFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
