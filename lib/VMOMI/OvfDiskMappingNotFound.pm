package VMOMI::OvfDiskMappingNotFound;
use parent 'VMOMI::OvfSystemFault';

our @class_members = ( 
    ['diskName', undef, 0, 1],
    ['vmName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
