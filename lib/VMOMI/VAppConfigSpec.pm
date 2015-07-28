package VMOMI::VAppConfigSpec;
use parent 'VMOMI::VmConfigSpec';

our @class_members = ( 
    ['entityConfig', 'VAppEntityConfigInfo', 1, 0],
    ['annotation', undef, 0, 0],
    ['instanceUuid', undef, 0, 0],
    ['managedBy', 'ManagedByInfo', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
