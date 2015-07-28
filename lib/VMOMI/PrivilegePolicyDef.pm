package VMOMI::PrivilegePolicyDef;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['createPrivilege', undef, 0, 1],
    ['readPrivilege', undef, 0, 1],
    ['updatePrivilege', undef, 0, 1],
    ['deletePrivilege', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
