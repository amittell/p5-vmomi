package VMOMI::SecurityProfile;
use parent 'VMOMI::ApplyProfile';

our @class_members = ( 
    ['permission', 'PermissionProfile', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
