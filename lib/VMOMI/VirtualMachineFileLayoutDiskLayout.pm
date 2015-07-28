package VMOMI::VirtualMachineFileLayoutDiskLayout;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['diskFile', undef, 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;