package VMOMI::VmConfigIncompatibleForRecordReplay;
use parent 'VMOMI::VmConfigFault';

our @class_members = ( 
    ['fault', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
