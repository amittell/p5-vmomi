package VMOMI::DuplicateName;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['object', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
