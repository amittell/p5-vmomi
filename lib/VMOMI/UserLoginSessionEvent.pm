package VMOMI::UserLoginSessionEvent;
use parent 'VMOMI::SessionEvent';

our @class_members = ( 
    ['ipAddress', undef, 0, 1],
    ['userAgent', undef, 0, 0],
    ['locale', undef, 0, 1],
    ['sessionId', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
