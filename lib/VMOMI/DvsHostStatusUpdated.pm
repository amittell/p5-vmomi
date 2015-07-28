package VMOMI::DvsHostStatusUpdated;
use parent 'VMOMI::DvsEvent';

our @class_members = ( 
    ['hostMember', 'HostEventArgument', 0, 1],
    ['oldStatus', undef, 0, 0],
    ['newStatus', undef, 0, 0],
    ['oldStatusDetail', undef, 0, 0],
    ['newStatusDetail', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
