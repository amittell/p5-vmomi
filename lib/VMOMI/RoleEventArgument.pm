package VMOMI::RoleEventArgument;
use parent 'VMOMI::EventArgument';

our @class_members = ( 
    ['roleId', undef, 0, 1],
    ['name', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
