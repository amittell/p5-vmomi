package VMOMI::CannotUseNetwork;
use parent 'VMOMI::VmConfigFault';

our @class_members = ( 
    ['device', undef, 0, 1],
    ['backing', undef, 0, 1],
    ['connected', 'boolean', 0, 1],
    ['reason', undef, 0, 1],
    ['network', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
