package VMOMI::ServiceConsoleReservationInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['serviceConsoleReservedCfg', undef, 0, 1],
    ['serviceConsoleReserved', undef, 0, 1],
    ['unreserved', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
