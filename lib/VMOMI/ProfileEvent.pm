package VMOMI::ProfileEvent;
use parent 'VMOMI::Event';

our @class_members = ( 
    ['profile', 'ProfileEventArgument', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
