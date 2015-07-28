package VMOMI::VirtualSCSIControllerOption;
use parent 'VMOMI::VirtualControllerOption';

our @class_members = ( 
    ['numSCSIDisks', 'IntOption', 0, 1],
    ['numSCSICdroms', 'IntOption', 0, 1],
    ['numSCSIPassthrough', 'IntOption', 0, 1],
    ['sharing', 'VirtualSCSISharing', 1, 1],
    ['defaultSharedIndex', undef, 0, 1],
    ['hotAddRemove', 'BoolOption', 0, 1],
    ['scsiCtlrUnitNumber', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
