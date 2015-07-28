package VMOMI::VsanHostDiskMapResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['mapping', 'VsanHostDiskMapping', 0, 1],
    ['diskResult', 'VsanHostDiskResult', 1, 0],
    ['error', 'LocalizedMethodFault', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
