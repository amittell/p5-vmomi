package VMOMI::DVSFailureCriteria;
use parent 'VMOMI::InheritablePolicy';

our @class_members = ( 
    ['checkSpeed', 'StringPolicy', 0, 0],
    ['speed', 'IntPolicy', 0, 0],
    ['checkDuplex', 'BoolPolicy', 0, 0],
    ['fullDuplex', 'BoolPolicy', 0, 0],
    ['checkErrorPercent', 'BoolPolicy', 0, 0],
    ['percentage', 'IntPolicy', 0, 0],
    ['checkBeacon', 'BoolPolicy', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
