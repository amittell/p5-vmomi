package VMOMI::AuthorizationDescription;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['privilege', 'ElementDescription', 1, 1],
    ['privilegeGroup', 'ElementDescription', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
