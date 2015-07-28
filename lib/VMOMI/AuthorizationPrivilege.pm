package VMOMI::AuthorizationPrivilege;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['privId', undef, 0, 1],
    ['onParent', 'boolean', 0, 1],
    ['name', undef, 0, 1],
    ['privGroupName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
