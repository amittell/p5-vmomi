package VMOMI::DvsPortJoinPortgroupEvent;
use parent 'VMOMI::DvsEvent';

our @class_members = ( 
    ['portKey', undef, 0, 1],
    ['portgroupKey', undef, 0, 1],
    ['portgroupName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
