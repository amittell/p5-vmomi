package VMOMI::UserUnassignedFromGroup;
use parent 'VMOMI::HostEvent';

our @class_members = ( 
    ['userLogin', undef, 0, 1],
    ['group', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;