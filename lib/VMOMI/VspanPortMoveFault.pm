package VMOMI::VspanPortMoveFault;
use parent 'VMOMI::DvsFault';

our @class_members = ( 
    ['srcPortgroupName', undef, 0, 1],
    ['destPortgroupName', undef, 0, 1],
    ['portKey', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
