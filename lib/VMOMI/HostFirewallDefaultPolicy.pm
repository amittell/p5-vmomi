package VMOMI::HostFirewallDefaultPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['incomingBlocked', 'boolean', 0, 0],
    ['outgoingBlocked', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
