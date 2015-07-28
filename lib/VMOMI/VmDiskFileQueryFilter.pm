package VMOMI::VmDiskFileQueryFilter;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['diskType', undef, 1, 0],
    ['matchHardwareVersion', undef, 1, 0],
    ['controllerType', undef, 1, 0],
    ['thin', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
