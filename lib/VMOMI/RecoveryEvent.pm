package VMOMI::RecoveryEvent;
use parent 'VMOMI::DvsEvent';

our @class_members = ( 
    ['hostName', undef, 0, 1],
    ['portKey', undef, 0, 1],
    ['dvsUuid', undef, 0, 0],
    ['vnic', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
