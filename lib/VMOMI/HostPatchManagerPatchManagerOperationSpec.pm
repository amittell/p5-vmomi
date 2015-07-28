package VMOMI::HostPatchManagerPatchManagerOperationSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['proxy', undef, 0, 0],
    ['port', undef, 0, 0],
    ['userName', undef, 0, 0],
    ['password', undef, 0, 0],
    ['cmdOption', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
