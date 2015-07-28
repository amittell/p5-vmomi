package VMOMI::HostSecuritySpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['adminPassword', undef, 0, 0],
    ['removePermission', 'Permission', 1, 0],
    ['addPermission', 'Permission', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
