package VMOMI::HostDateTimeSystemTimeZone;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['description', undef, 0, 1],
    ['gmtOffset', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
