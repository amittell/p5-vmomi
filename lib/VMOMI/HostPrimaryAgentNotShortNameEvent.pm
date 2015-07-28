package VMOMI::HostPrimaryAgentNotShortNameEvent;
use parent 'VMOMI::HostDasEvent';

our @class_members = ( 
    ['primaryAgent', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
