package VMOMI::VirtualDiskConfigSpec;
use parent 'VMOMI::VirtualDeviceConfigSpec';

our @class_members = ( 
    ['diskMoveType', undef, 0, 0],
    ['migrateCache', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
