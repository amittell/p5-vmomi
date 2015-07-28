package VMOMI::DatacenterRenamedEvent;
use parent 'VMOMI::DatacenterEvent';

our @class_members = ( 
    ['oldName', undef, 0, 1],
    ['newName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;