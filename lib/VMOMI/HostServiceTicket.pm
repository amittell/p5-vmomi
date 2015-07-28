package VMOMI::HostServiceTicket;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['host', undef, 0, 0],
    ['port', undef, 0, 0],
    ['sslThumbprint', undef, 0, 0],
    ['service', undef, 0, 1],
    ['serviceVersion', undef, 0, 1],
    ['sessionId', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
